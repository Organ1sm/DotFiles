--                          Author:    Organ1sm 
--                          Github:    github.com/Organ1sm


-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━❰ Plugin-Independent Mapping ❱━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
--[[this config file contains the mapping that don't depends
on any plugin. mappings for plugins-dependent are in
lua/plugin" directory. each plugin has it's own config file

To see the current mapping for |<Leader>| type :echo mapleader.
If it reports an undefined variable it means the leader key is
set to the "default of '\'.
i defined leader on very start of init.lua file so that every
keymap would work]]


local keymap	= vim.api.nvim_set_keymap
local cmd 	= vim.cmd
local options	= {noremap = true, silent = true}
local silent	= {silent = true}

-- to quit vim
keymap('n', '<Leader>q',':q <CR>',      options)


-- scroll window up/down
keymap('i', '<C-e>', '<ESC><C-e>', silent)
keymap('i', '<C-y>', '<ESC><C-y>', silent)

-- scroll window horizontally (scroll-horizontal)
-- < reference: https://unix.stackexchange.com/questions/110251/how-to-put-current-line-at-top-center-bottom-of-screen-in-vim
keymap('n', '<C-h>', 'zh', silent) -- left
keymap('n', '<C-l>', 'zl', silent) -- right

-- clear Search Results
keymap('n', '//', ':noh <CR>', silent)


cmd([[ :nnoremap <c-z> <nop><CR> ]])