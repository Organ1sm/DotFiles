-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-bracketed" },

  { import = "astrocommunity.scrolling.mini-animate", enabled = true },
  { import = "astrocommunity.scrolling.satellite-nvim", enabled = true },

  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- { import = "astrocommunity.lsp.lsp-signature-nvim" },

  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.utility.noice-nvim", enabled = true },

  { import = "astrocommunity.programming-language-support.dooku-nvim" },

  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },

  -- import/override with your plugins folder
}
