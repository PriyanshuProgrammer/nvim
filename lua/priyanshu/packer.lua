vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Linting and formatting
	use({
		"nvimtools/none-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Telescope fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- File Explorer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		config = function()
			require("nvim-tree").setup()
		end,
	})

	-- Catppuccin theme (already added)
	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- or "latte", "frappe", "macchiato"
				transparent_background = true,
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	})

	-- Optional: OneDark theme (similar to VS Code's clean look)
	use({
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").setup({
				style = "darker", -- Options: 'dark', 'darker', 'cool', 'warm', etc.
			})
			require("onedark").load()
			-- Transparent backgrounds
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
			vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
			vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
		end,
	})

	-- LSP support
	use({ "neovim/nvim-lspconfig", tag = "v1.8.0", pin = true })
	use({ "mason-org/mason.nvim", tag = "v1.11.0", pin = true })
	use({ "mason-org/mason-lspconfig.nvim", tag = "v1.32.0", pin = true })

	-- Treesitter for syntax highlighting
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/playground")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/cmp-vsnip")

	-- Statusline like VS Code
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
					section_separators = "",
					component_separators = "",
				},
			})
		end,
	})
end)
