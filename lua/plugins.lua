require("lazy").setup({
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			require("plugin_conf.which-key")
		end,
	},
	"folke/neodev.nvim",
	"navarasu/onedark.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("plugin_conf.treesitter")
		end
	},
	{ "neovim/nvim-lspconfig", config = function() require("plugin_conf.lspconfig") end },
	{
		"max397574/better-escape.nvim",
		config = function()
			require("plugin_conf.betterescape")
		end
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
		config = function()
			require(
				"plugin_conf.comment")
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function() require("plugin_conf.lualine") end,
		dependencies = {
			"nvim-tree/nvim-web-devicons", lazy = true },
		lazy = false
	},
	{
		"andymass/vim-matchup",
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "status_manual" }
		end
	},

	"nvim-tree/nvim-web-devicons",
	{ "hrsh7th/nvim-cmp",      config = function() require("plugin_conf.cmp") end },
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	"max397574/better-escape.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = {
			"nvim-lua/popup.nvim", "LinArcX/telescope-env.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, "nvim-telescope/telescope-ui-select.nvim",
			"nvim-lua/plenary.nvim" },
		config = function()
			require("plugin_conf.telescope")
		end
	},
	"anuvyklack/pretty-fold.nvim",
	{ "williamboman/mason.nvim", config = function() require("plugin_conf.mason") end },
	"williamboman/mason-lspconfig.nvim",
	"fgheng/winbar.nvim",
	"lervag/vimtex",
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		config = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
	},
	"dhruvasagar/vim-table-mode",
	"godlygeek/tabular",
	"preservim/vim-markdown",
	"KeitaNakamura/tex-conceal.vim",
	"onsails/lspkind-nvim",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-emoji",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-omni",
	"hrsh7th/cmp-nvim-lsp-signature-help",
	"quangnguyen30192/cmp-nvim-ultisnips",
	"nvim-telescope/telescope-symbols.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"rcarriga/nvim-notify",
	"SirVer/ultisnips",
	"Raimondi/delimitMate",
	"gbprod/yanky.nvim",
	"chrisbra/unicode.vim",
	"wellle/targets.vim",
	"gelguy/wilder.nvim",
	"lukas-reineke/lsp-format.nvim",
	{
		"SmiteshP/nvim-navic",
		config = function()
			require("plugin_conf.navic")
		end
	},
	"nvim-neo-tree/neo-tree.nvim",
	"MunifTanjim/nui.nvim",
	"akinsho/toggleterm.nvim",
	-- "SeniorMars/typst.nvim"
	{
		'kaarmu/typst.vim',
		ft = 'typst',
		lazy = false,
	}
})
