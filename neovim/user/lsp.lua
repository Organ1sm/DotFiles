local M = {
  -- customize lsp formatting options
  formatting = {
    -- control auto formatting on save
    format_on_save = {
      enabled = true, -- enable or disable format on save globally
      allow_filetypes = {}, -- enable format on save for specified filetypes only
      ignore_filetypes = {}, -- disable format on save for specified filetypes,
    },
    disabled = {},
    timeout_ms = 2000, -- default format timeout
    -- filter = function(client) -- fully override the default formatting function
    --   return true
    -- end
  },
  servers = {},
  setup_handlers = {},
  config = {},
}

return M
