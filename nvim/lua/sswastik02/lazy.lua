-- Bootstrapping for installing lazy
local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup({
  { import = "sswastik02.plugins" },
  { import = "sswastik02.plugins.lsp" },
  { import = "sswastik02.plugins.dap" },
})
