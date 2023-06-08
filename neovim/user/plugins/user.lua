return {
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = true,
  },

  {
    -- "karb94/neoscroll.nvim",
    "echasnovski/mini.animate",
    event = "BufRead",
    onfig = true,
  },

  {
    "echasnovski/mini.cursorword",
    event = "VeryLazy",
    config = true,
  },

  {
    "echasnovski/mini.surround",
    event = "VeryLazy",
    config = true,
  },

  {
    "lewis6991/satellite.nvim",
    event = "BufRead",
    config = true,
  },

  {
    "ggandor/leap.nvim",
    event = "BufRead",
    config = true,
  },


  {
    "ThePrimeagen/refactoring.nvim",
    event = "BufRead",
    config = true
  },

  {
    "danymat/neogen",
    lazy = true,
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
  },

  {
    "j-hui/fidget.nvim",
    event = "BufRead",
    config = true,
  },
}
