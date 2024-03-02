return {
  {
    "nvimdev/lspsaga.nvim",
    ft = { "c", "cpp", "lua", "rust", "cmake", "zig", "python" },
    opts = {
      ui = {
        -- Border type can be single, double, rounded, solid, shadow.
        border = "rounded",
        diagnostic = "",
        preview = "",
      },
      -- winbar config
      symbol_in_winbar = {
        show_file = false,
        separator = "  ",
        folder_level = 0,
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

      finder = {
        keys = {
          vsplit = "v",
          quit = "q",
        },
      },
      -- finder icons
      finder_icons = { def = "stevearc/overseer.nvim", "  ", ref = "󰵚 ", link = "󰴜 " },
      request_timeout = 3000,
    },
  },
}
