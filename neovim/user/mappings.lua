return {
  -- first key is the mode
  n = {
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["H"] = { "^" },
    ["L"] = { "$" },

    -- lsp
    ["<leader>fm"] = {"<cmd>lua vim.lsp.buf.format()<CR>"},

    -- windows manage
    ["sv"] = { "<cmd>vsp<cr>" },
    ["sh"] = { "<cmd>sp<cr>" },
    ["sc"] = { "<c-w>c" },
    ["so"] = { "<c-w>o" },

    -- buffer
    ["<leader>c"] = false,
    ["<A-c>"] = { function() require("astronvim.utils.buffer").close() end },

    -- neotree
    ["<leader>e"] = false,
    ["<A-m>"] = { "<cmd> Neotree toggle <CR>", desc = "Toggle File Explorer" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },

  v = {
    ["H"] = { "^" },
    ["L"] = { "$" },
  },

  t = {},
}
