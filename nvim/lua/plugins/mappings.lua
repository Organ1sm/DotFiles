local get_icon = require("astroui").get_icon

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },

          ["H"] = { "^" },
          ["L"] = { "$" },

          -- undo history
          ["<leader>uh"] = { "<cmd>Telescope undo<cr>", desc = "Telescope undo" },

          -- windows manage
          ["sv"] = { "<cmd>vsp<cr>" },
          ["sh"] = { "<cmd>sp<cr>" },
          ["sc"] = { "<c-w>c" },
          ["so"] = { "<c-w>o" },

          -- buffer
          ["<A-c>"] = { function() require("astrocore.buffer").close() end },
          ["<leader><Tab>"] = { "<cmd>bnext<CR>", desc = "Next buffer" },

          -- neotree
          ["<A-m>"] = { "<cmd> Neotree toggle <CR>", desc = "Toggle File Explorer" },
          --
          -- comment generate
          ["<leader>ng"] = { ":lua require('neogen').generate()<CR>", desc = "Comment Generate" },

          -- LSP
          ["<leader>lc"] = { "<cmd>Lspsaga code_action<CR>", desc = "code action" },
          ["<leader>ld"] = { "<cmd>Lspsaga show_buf_diagnostics<CR>", desc = "show buffer diagnostics" },
          ["[e"] = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "Previous diagnostic" },
          ["]e"] = { "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Next diagnostic" },
          ["gD"] = { "<cmd>Lspsaga peek_definition<CR>", desc = "Peek Definition" },
          ["gd"] = { "<cmd>Lspsaga goto_definition<CR>", desc = "Goto Definition" },
          ["gT"] = { "<cmd>Lspsaga peek_type_definition<CR>", desc = "Peek Type Definition" },
          ["gf"] = { "<cmd>Lspsaga finder<CR>", desc = "Lspsaga lsp finder" },

          ["<A-o>"] = { "<cmd> ClangdSwitchSourceHeader <CR>", desc = "Toggle File Explorer" },

          -- CMake
          ["<leader>c"] = { desc = get_icon("CMake", 1, true) .. "CMake" },
          ["<leader>cb"] = { "<cmd>CMakeBuild<CR>", desc = "Build" },
          ["<leader>cr"] = { "<cmd>CMakeRun<CR>", desc = "Run" },

          ["<leader>cg"] = { "<cmd>CMakeGenerate<CR>", desc = "Generate" },
          ["<leader>cc"] = { "<cmd>CMakeClean<CR>", desc = "Clean target" },
          ["<leader>cd"] = { "<cmd>CMakeDebug<CR>", desc = "Debug" },
          ["<leader>ci"] = { "<cmd>CMakeInstall<CR>", desc = "Install targets" },

          ["<leader>ct"] = { "<cmd>CMakeSelectBuildType<CR>", desc = "Select build type" },
          ["<leader>cu"] = { "<cmd>CMakeSelectBuildTarget<CR>", desc = "Select build target" },
          ["<leader>cl"] = { "<cmd>CMakeSelectLaunchTarget<CR>", desc = "Select launch target" },

          ["<leader>coe"] = { "<cmd>CMakeOpenExecutor<CR>", desc = "Open CMake Executor" },
          ["<leader>cec"] = { "<cmd>CMakeCloseExecutor<CR>", desc = "Close CMake Executor" },
          ["<leader>cor"] = { "<cmd>CMakeOpenRunner<CR>", desc = "Open CMake Runner" },
          ["<leader>crc"] = { "<cmd>CMakeCloseRunner<CR>", desc = "Close CMake Runner" },

          ["<leader>cs"] = {
            function()
              vim.cmd [[CMakeStopRunner]]
              vim.cmd [[CMakeStopExecutor]]
            end,
            desc = "Close console",
          },

          -- setting a mapping to false will disable it
          ["<leader>e"] = false,
          -- Code Runner
          ["<leader>r"] = { desc = get_icon("Runner", 1, true) .. "Runner and Refactor" },
        },

        v = {
          ["H"] = { "^" },
          ["L"] = { "$" },
        },

        t = {},
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          -- gD = {
          --   function() vim.lsp.buf.declaration() end,
          --   desc = "Declaration of current symbol",
          --   cond = "textDocument/declaration",
          -- },
        },
      },
    },
  },
}
