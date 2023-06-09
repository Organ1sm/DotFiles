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

    -- C/C++
    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        -- CHANGE THIS to your path!
        command = CodeLLDBDir,
        args = { "--port", "${port}" },

        -- On windows you may have to uncomment this:
        detached = false,
      },
    }

    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
        cwd = "${workspaceFolder}",
        stopOnEntry = true,
        runInTerminal = true,
      },
    }
    dap.configurations.c = dap.configurations.cpp

    local dapui = require "dapui"
    dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
    dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
    dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
  end,
}
