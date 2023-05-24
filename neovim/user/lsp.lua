local M = {
  -- customize lsp formatting options
  formatting = {
    -- control auto formatting on save
    format_on_save = {
      enabled = true, -- enable or disable format on save globally
      allow_filetypes = {}, -- enable format on save for specified filetypes only
      ignore_filetypes = {}, -- disable format on save for specified filetypes,
    },
    disabled = { -- disable formatting capabilities for the listed language servers
      "lua_ls",
      "neocmake",
    },
    timeout_ms = 2000, -- default format timeout
    -- filter = function(client) -- fully override the default formatting function
    --   return true
    -- end
  },
  -- enable servers that you already have installed without mason
  servers = {},

  setup_handlers = {
    -- add custom handler
    clangd = function(_, opts) require("clangd_extensions").setup { server = opts } end,
  },

  config = {
    clangd = require "user.lspconfig.clangd",
    pyright = require "user.lspconfig.pyright",
  },
}

return M
