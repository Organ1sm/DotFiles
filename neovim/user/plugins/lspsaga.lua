return {
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    opts = {
      ui = {
        -- Border type can be single, double, rounded, solid, shadow.
        border = "rounded",
        preview = " ",
        diagnostic = "🐞",
        incoming = "󰏷 ",
        outgoing = "󰏻 ",
      },
      -- winbar config
      symbol_in_winbar = {
        separator = "  ",
        hide_keyword = false,
      },
      -- lightbulb config
      lightbulb = {
        enable_in_insert = false,
      },
      -- diagnostic config
      diagnostic = {
        text_hl_follow = false,
      },
      -- finder icons
      finder_icons = { def = "  ", ref = "󰵚 ", link = "󰴜 " },
      request_timeout = 3000,
    },
  },
}
