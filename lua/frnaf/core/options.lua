vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.showmode = false

opt.undofile = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true
opt.scrolloff = 999

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

opt.backspace = 'indent,eol,start'

opt.clipboard = 'unnamedplus'

opt.splitright = true
opt.splitbelow = true 

opt.hlsearch = true

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }



