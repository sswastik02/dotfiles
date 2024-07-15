return {
  "Mofiqul/dracula.nvim",
  priority=1000,
  config = function()
    require("dracula").setup({
    })
    vim.cmd("colorscheme dracula")
  end
}
