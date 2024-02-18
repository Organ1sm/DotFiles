return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-bracketed" },

  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  { import = "astrocommunity.code-runner.overseer-nvim" },

  -- { import = "astrocommunity.indent.indent-blankline-nvim"},
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.pack.zig" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
