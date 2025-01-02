return {
	"sudormrfbin/cheatsheet.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	cmd = "Cheatsheet",
	keys = {
		{ "<leader>ch", "<cmd>Cheatsheet<CR>", { desc = "Open Cheatsheet" } },
	},
}
