return {
  "Mofiqul/dracula.nvim",
  priority=1000,
  config = function()
    require("dracula").setup({
      overrides = function(colors)
        return {
          AlphaHeader= { fg = colors.red, bg = colors.red },
          AlphaShortcut= { fg = colors.red, bg = colors.red },
          AlphaHeaderLabel= { fg = colors.red, bg = colors.red },
          AlphaButtons= { fg = colors.red, bg = colors.red },
        }
      end,
    })
    vim.cmd("colorscheme dracula")
  end
}
