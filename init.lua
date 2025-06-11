require("priyanshu")
vim.cmd("set number")
vim.o.guifont = "FiraCode Nerd Font:h14"
vim.o.termguicolors = true
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })
	end,
})
vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("let g:netrw_banner=0")
