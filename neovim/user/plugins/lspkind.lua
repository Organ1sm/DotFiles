return {
  {
    "onsails/lspkind.nvim",
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        mode = "symbol_text",
      })
    end,
  },
}
