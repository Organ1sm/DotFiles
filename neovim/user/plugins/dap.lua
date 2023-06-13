return {
  "mfussenegger/nvim-dap",
  event = "VeryLazy",
  dependencies = {
    { "rcarriga/nvim-dap-ui", config = true },
    { "theHamsta/nvim-dap-virtual-text", config = true },
    { "mfussenegger/nvim-dap-python" },
    { "jbyuki/one-small-step-for-vimkind" },
  },
  config = function()
    local dap = require "dap"
    local utils = require "user.utils"

    local pathSep = utils.pathSep
    local CodelldbPath = require("mason-registry").get_package("codelldb"):get_install_path()
      .. pathSep
      .. "extension"
      .. pathSep
      .. "adapter"
      .. pathSep
      .. "codelldb"

    local lldb = {
      name = "Launch lldb",
      type = "codelldb",
      request = "launch",
      program = function() -- First, check if exists CMakeLists.txt
        local cwd = vim.fn.getcwd()
        if require("user.utils").exists(cwd, "CMakeLists.txt") then
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        else
          if utils.isWindows then
            os.execute("mkdir " .. "bin") -- create this directory
          else
            os.execute("mkdir" .. "-p" .. "bin")
          end

          local fileName = vim.fn.expand "%:t:r"
          local cmd = "!g++ -g % -o bin/" .. fileName
          vim.cmd(cmd) -- First, compile it

          return "${fileDirname}/bin/" .. fileName -- Then, return it
        end
      end,

      cwd = "${workspaceFolder}",
      stopOnEntry = false,
      runInTerminal = true,
      args = {},
      console = "integratedTerminal",
    }

    -- C/C++
    dap.adapters.codelldb = {
      name = "codelldb",
      type = "server",
      port = "${port}",
      executable = {
        command = CodelldbPath,
        args = { "--port", "${port}" },

        -- On windows you may have to uncomment this:
        -- detached = false,
      },
    }

    dap.configurations.cpp = { lldb }
    dap.configurations.c = dap.configurations.cpp

    local dapui = require "dapui"
    dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
    dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
    dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
  end,
}
