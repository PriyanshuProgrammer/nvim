vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvimtools/none-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		config = function()
			require("nvim-tree").setup()
		end,
	})

	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "neovim/nvim-lspconfig", tag = "v1.8.0", pin = true })
	use({ "mason-org/mason.nvim", tag = "v1.11.0", pin = true })
	use({ "mason-org/mason-lspconfig.nvim", tag = "v1.32.0", pin = true })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/vim-vsnip") -- Required by vsnip
	use("hrsh7th/cmp-vsnip") -- Completion source for vsnip
end)
