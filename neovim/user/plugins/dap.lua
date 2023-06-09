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

    local CodeLLDBDir = require("mason-registry").get_package("codelldb"):get_install_path()
      .. "\\extension\\adapter\\codelldb"

    local lldb = {
      name = "Launch",
      type = "codelldb",
      request = "launch",
      program = function() -- First, check if exists CMakeLists.txt
        local cwd = vim.fn.getcwd()
        if require("user.utils").exists(cwd, "CMakeLists.txt") then
          -- Then invoke cmake commands
          -- Then ask user to provide execute file
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        else
          local fileName = vim.fn.expand "%:t:r"
          -- create this directory
          os.execute("mkdir " .. "bin")
          local cmd = "!g++ -g % -o bin/" .. fileName
          -- First, compile it
          vim.cmd(cmd)
          -- Then, return it
          return "${fileDirname}/bin/" .. fileName
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
        -- CHANGE THIS to your path!
        command = CodeLLDBDir,
        args = { "--port", "${port}" },

        -- On windows you may have to uncomment this:
        -- detached = false,
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
