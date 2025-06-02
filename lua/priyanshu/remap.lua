vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>,", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>.", vim.cmd.bnext)
vim.keymap.set("n", "<C-d>", "daw", { desc = "Delete word under cursor" })
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end, { desc = "Format current buffer" })
vim.opt.timeoutlen = 500
