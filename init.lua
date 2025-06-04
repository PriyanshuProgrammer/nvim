require("priyanshu")
vim.cmd("set number")
vim.cmd.colorscheme("catppuccin")
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })
	end,
})
vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("let g:netrw_banner=0")
