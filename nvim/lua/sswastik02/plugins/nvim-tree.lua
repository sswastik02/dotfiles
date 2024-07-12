return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvt = require("nvim-tree")

    -- recommended setttings from nvim-tree
    vim.g.loaded_netrw=1
    vim.g.loaded_netrwPlugin=1

    -- keymaps for file explorer
    vim.keymap.set("n", "<leader>et", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer and locate file" })
    vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
    nvt.setup({
    })
  end
}
