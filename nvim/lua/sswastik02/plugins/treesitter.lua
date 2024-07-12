return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate", -- treesitter update
  config = function()
    local ts = require("nvim-treesitter.configs")
    ts.setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      ensure_installed = {
        "lua",
        "vimdoc",
        "vim",
        "json",
      },
    })
  end,
}
