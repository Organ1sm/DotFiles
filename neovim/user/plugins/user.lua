return {
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function() require("todo-comments").setup() end,
  },

  {
    "karb94/neoscroll.nvim",
    event = "BufRead",
    config = function() require("neoscroll").setup() end,
  },
  -- {
  --   "ggandor/leap.nvim",
  --   config = function() require("user.leap").config() end,
  -- },{
  {
    "danymat/neogen",
    lazy = true,
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
  },
}
