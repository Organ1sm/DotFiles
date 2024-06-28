-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

local get_icon = require("astroui").get_icon

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.dignostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = { true, severity = vim.diagnostic.severity.E },
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

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

    },
  },
}
