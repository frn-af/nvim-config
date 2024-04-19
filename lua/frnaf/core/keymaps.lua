vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap

keymap.set('i', 'jj', '<ESC>', {desc = 'Exit insert mode'})
keymap.set('n', '<leader>w', '<cmd>update<CR>', {desc = 'Save or update file'})

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', {desc = 'Clear highlight'})

keymap.set('n', '<leader>sv', '<C-w>v', {desc = '[S]plit window vertically'})
keymap.set('n', '<leader>sh', '<C-w>s', {desc = '[S]plit window horizontally'})
keymap.set('n', '<leader>se', '<C-w>=', {desc = 'Make [S]plit equal size'})
keymap.set('n', '<leader>sx', '<cmd>close<CR>', {desc = 'Close current [S]plit'})
