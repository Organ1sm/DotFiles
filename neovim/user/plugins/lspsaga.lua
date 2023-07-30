return {
  {
    "nvimdev/lspsaga.nvim",
    opts = {
      ui = {
        -- Border type can be single, double, rounded, solid, shadow.
        border = "rounded",
        diagnostic = "",
        preview = "",
      },
      -- winbar config
      symbol_in_winbar = {
        separator = "  ",
        hide_keyword = false,
      },
      -- lightbulb config
      lightbulb = {
        enable_in_insert = false,
        virtual_text = true,
      },
      -- diagnostic config
      diagnostic = {
        text_hl_follow = false,
      },
      -- finder icons
      finder_icons = { def = "stevearc/overseer.nvim", "  ", ref = "󰵚 ", link = "󰴜 " },
      request_timeout = 3000,
    },
  },
}
