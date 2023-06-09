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
    config = true,
  },

  {
    "lewis6991/satellite.nvim",
    event = "BufRead",
    config = true,
  },

  -- Enhanced f/t motions for Leap
  {
    "ggandor/flit.nvim",
    keys = { "f", "F", "t", "T" },
    opts = { labeled_modes = "nx" },
  },

  {
    "ggandor/leap.nvim",
    event = "BufRead",
    config = function()
      require("leap").add_default_mappings()
      vim.keymap.set({ "x", "o", "n" }, "s", "<Plug>(leap-forward-to)") -- fix the mini-surround conflict
    end,
  },

  {
    "ThePrimeagen/refactoring.nvim",
    event = "BufRead",
    config = true,
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
  {
    "Kohirus/cppassist.nvim",
    ft = { "c", "cpp" },
    config = true,
  },
}
