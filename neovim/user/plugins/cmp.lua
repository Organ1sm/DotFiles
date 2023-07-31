return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-cmdline", -- add cmp-cmdline as dependency of cmp
    },
    opts = function(_, opts)
      local lspkind_status_ok, lspkind = pcall(require, "lspkind")
      local cmp = require "cmp"

      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })

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
