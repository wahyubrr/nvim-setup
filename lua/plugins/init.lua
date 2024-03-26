return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre' -- uncomment for format on save
		config = function()
			require "configs.conform"
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require "configs.lspconfig"
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server", "stylua",
				"html-lsp", "css-lsp", "prettier",
				"gopls", "rust-analyzer", "python-lsp-server"
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim", "lua", "vimdoc",
				"html", "css", "json",
				"javascript", "typescript",
				"go", "rust", "python",
				"c", "cpp", "java",
			},
		},
	},

	{
		"github/copilot.vim",
		lazy = false,
	},

	{
		"wellle/context.vim",
		lazy = false,
	},

	-- DAP setup
	{
		"mfussenegger/nvim-dap",
		config = function() end,
		lazy = false,
	},
	{
		"leoluz/nvim-dap-go",
		requires = { "mfussenegger/nvim-dap", "rcarriga/nvim-dap-ui" },
		config = function()
			require "configs.dapconfig"
		end,
		lazy = false,
	},
	{
		"rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		lazy = false,
	},
	{
		"nvim-neotest/nvim-nio",
		lazy = false,
	},
	-- {
	-- 	"rcarriga/nvim-dap-ui",
	-- },
	{
		'akinsho/flutter-tools.nvim',
		lazy = false,
		dependencies = {
			'nvim-lua/plenary.nvim',
			'stevearc/dressing.nvim', -- optional for vim.ui.select
		},
		config = true,
	}
}
