return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap");

    vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" });
    vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue Debugger" });
    vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step over" });
    vim.keymap.set("n", "<leader>dso", dap.step_out, { desc = "Step out" });
    vim.keymap.set("n", "<leader>dsi", dap.step_into, { desc = "Step in" });

  end,
  -- keys = {
  --   {"<leader>dt", mode = 'n'},
  --   {"<leader>dc", mode = 'n'}
  -- }
}
