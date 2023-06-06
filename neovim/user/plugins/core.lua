return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = require "user.header"
      return opts
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        shell = require("user.utils").getShell,
      })
    end,
  },
}
