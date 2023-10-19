return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-bracketed", enabled = true },

  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", enabled = true },

  { import = "astrocommunity.indent.indent-blankline-nvim", enabled = true },
  { import = "astrocommunity.indent.mini-indentscope", enabled = true },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
