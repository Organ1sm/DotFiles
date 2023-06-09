local telescopeActions = require "telescope.actions"
local telescopeActionsState = require "telescope.actions.state"
local finders = require "telescope.finders"
local pickers = require "telescope.pickers"
local conf = require("telescope.config").values
local fn = require "user.utils"

local function run_func_on_file(table, opts)
  opts = opts or {}

  local drop_down = require("telescope.themes").get_dropdown {}
  drop_down.attach_mappings = table.attach_mappings
  opts = vim.tbl_deep_extend("force", drop_down, opts)
  pickers
      .new(opts, {
        prompt_title = table.name,
        finder = finders.new_table {
          results = table.results(table.results_args),
          entry_maker = function(entry)
            return {
              value = entry,
              display = entry[1],
              ordinal = entry[1],
              path = entry[2],
            }
          end,
        },
        sorter = conf.file_sorter(opts),
      })
      :find()
end

return {
  "mfussenegger/nvim-dap",
  event = "VeryLazy",
  dependencies = {
    { "rcarriga/nvim-dap-ui",             config = true },
    { "theHamsta/nvim-dap-virtual-text",  config = true },
    { "mfussenegger/nvim-dap-python" },
    { "Pocco81/dap-buddy.nvim" },
    { "jbyuki/one-small-step-for-vimkind" },
  },
  config = function()
    local dap = require "dap"

    local CodeLLDBDir = require("mason-registry").get_package("codelldb"):get_install_path()
        .. "/extension/adapter/codelldb"
    local PythonDir = require("mason-registry").get_package("debugpy"):get_install_path() .. "/venv/Scripts/python"

    dap.adapters.py = {
      -- name = 'py',
      type = "executable",
      command = PythonDir,
      args = { "-m", "debugpy.adapter" },
      detatched = false,
    }

    dap.configurations.python = {
      {
        name = "Launch file",
        type = "python",     -- the type here established the link to the adapter definition: `dap.adapters.python`
        request = "launch",
        program = "${file}", -- This configuration will launch the current file if used.
        -- console = "integratedTerminal",
      },
    }

    local function set_program()
      local function run_scene(prompt_bufnr, map)
        telescopeActions.select_default:replace(function()
          telescopeActions.close(prompt_bufnr)
          local selected = telescopeActionsState.get_selected_entry()
          vim.g.dap_program = selected.path
        end)
        return true
      end

      run_func_on_file {
        name = "Executable",
        attach_mappings = run_scene,
        results = fn.get_files_by_end,
        results_args = fn.isWindows and ".exe" or "",
      }
      return true
    end

    require("astronvim.utils").set_mappings {
      n = {
        ["<leader>de"] = { set_program, desc = "Set program path" },
      },
    }

    local lldb = {
      name = "Launch",
      type = "codelldb",
      request = "launch",
      program = function()
        if not vim.g.dap_program or #vim.g.dap_program == 0 then
          vim.g.dap_program = vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end
        return vim.g.dap_program
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
      args = {},
    }

    -- C/C++
    dap.adapters.codelldb = {
      name = "codelldb",
      type = "server",
      port = "${port}",
      host = "127.0.0.1",
      executable = {
        -- CHANGE THIS to your path!
        command = CodeLLDBDir,
        args = { "--port", "${port}" },

        -- On windows you may have to uncomment this:
        detached = false,
      },
    }

    dap.configurations.cpp = {
      lldb,
    }
    dap.configurations.c = dap.configurations.cpp

    local dapui = require "dapui"
    dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
    dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
    dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
  end,
}
