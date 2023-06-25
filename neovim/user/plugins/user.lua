return {
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = true,
  },

  {
    "echasnovski/mini.animate",
    lazy = true,
    opts = { cursor = { enable = false } },
    config = true,
  },

  {
    "echasnovski/mini.cursorword",
    event = "VeryLazy",
    config = true,
  },

  {
    "echasnovski/mini.surround",
    event = "VeryLazy",
    opts = {
      mappings = {
        highlight = "",
      },
    },
    config = true,
  },

  {
    "lewis6991/satellite.nvim",
    event = "BufRead",
    config = true,
  },

  {
    "j-hui/fidget.nvim",
    event = "BufRead",
    tag = "legacy",
    config = true,
  },

  {
    "Kohirus/cppassist.nvim",
    ft = { "c", "cpp" },
    config = true,
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function(_, opts) require("dap-python").setup "python" end,
  },
}
