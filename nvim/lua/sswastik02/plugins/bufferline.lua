return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      mode = "tabs",
    },
    highlights = {
      fill = {
        bg = "#FFFFFF",
      }
    }
  }
}
