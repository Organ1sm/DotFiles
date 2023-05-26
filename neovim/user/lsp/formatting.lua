return {
  format_on_save = {
    enabled = true, -- enable or disable format on save globally
    allow_filetypes = {}, -- enable format on save for specified filetypes only
    ignore_filetypes = {}, -- disable format on save for specified filetypes,
  },
  disabled = { -- disable formatting capabilities for the listed language servers
    "lua_ls",
    "neocmakelsp",
  },
  timeout_ms = 2000, -- default format timeout
}
