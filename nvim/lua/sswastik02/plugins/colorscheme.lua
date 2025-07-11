return {
  "Mofiqul/dracula.nvim",
  priority=1000,
  config = function()
    require("dracula").setup({
      colors = {
        bg = "black",
        menu = "black",
      },
      overrides = {
        BufferLineFill = {
          bg = "black",
        },
        AlphaHeader= {
          fg = "#bd93f9"
        },
        Keyword = {
          fg = "white"
        },
      }
    })
    vim.cmd("colorscheme dracula")
  end
}
