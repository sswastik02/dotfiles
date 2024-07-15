vim.g.mapleader = " "

-- number operations
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- split management
vim.keymap.set("n", "<leader>s%", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>s\"", "<C-w>s", { desc = "Split window horizonatally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>s>", "<C-w>>", { desc = "Modify width by extending right" })
vim.keymap.set("n", "<leader>s<", "<C-w><", { desc = "Modify width by extending left" })

-- tabs management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open a new buffer" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Prev Buffer" })
vim.cmd("nnoremap <silent> <Esc> <Esc>:noh<CR>")
