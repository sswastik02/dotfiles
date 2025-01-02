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
vim.keymap.set("n", "<leader>t0", "<cmd>tabl<CR>", { desc = "Last Buffer" })
vim.keymap.set("n", "<leader>tc", "<cmd>tab split<CR>", { desc = "Copy Buffer" })


local function goto_tab(num)
  local tabnr = tonumber(num)
  if tabnr and tabnr > 0 then
    vim.cmd('tabnext ' .. tabnr)
  else
    print('Invalid tab number: ' .. num)
  end
end

for i = 1, 9 do
  vim.keymap.set('n', '<leader>t'..i, function() goto_tab(i) end, { noremap = true, silent = true })
end
-- system clipboard
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p", { desc = "copy to system clipboard" })
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y", { desc = "paste from system clipboard" })


vim.cmd("nnoremap <silent> <Esc> <Esc>:noh<CR>")
