-- folder tree structure
vim.g.netrw_liststyle=3

-- line number
vim.opt.relativenumber=true
vim.opt.number=true

-- tabs and indentation
vim.opt.tabstop=2 -- 2 spaces for tabs
vim.opt.shiftwidth=2 -- 2 spaces for indent width
vim.opt.expandtab=true -- expand tab to spaces
vim.opt.autoindent=true -- copy indent from current line when starting new one

vim.opt.wrap = false

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true -- case sensitive when mixed cases

-- left column
vim.opt.cursorline=true
vim.opt.signcolumn="yes"

-- backspace
vim.opt.backspace="indent,eol,start" -- allow backspace on indent, eol and start of insert

-- splits
vim.opt.splitright=true
vim.opt.splitbelow=true
