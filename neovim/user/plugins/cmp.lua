return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local lspkind_status_ok, lspkind = pcall(require, "lspkind")

      return require("astronvim.utils").extend_tbl(opts, {
        formatting = {
          fields = { "abbr", "menu", "kind" },
          format = lspkind_status_ok and lspkind.cmp_format(astronvim.lspkind) or nil,
        },
        window = {
          completion = {
            scrollbar = false,
          },
        },
      })
    end,
  },
}
