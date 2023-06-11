return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = require "user.header"
      return opts
    end,
  },
  { "mfussenegger/nvim-dap", enabled = true },
  {
    "akinsho/toggleterm.nvim",
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        shell = require("user.utils").getShell,
      })
    end,
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"

      opts.statusline = {
        hl = { fg = "fg", bg = "bg" },
        status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
        status.component.git_branch(),
        status.component.file_info { filetype = {}, filename = false, file_modified = false },
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp { lsp_progress = false },
        status.component.nav(),
      }

      return opts
    end,
  },
}
