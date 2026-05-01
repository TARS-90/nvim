require("lazy").setup({

	{ "tpope/vim-commentary" },
	{ "nvim-lua/plenary.nvim" },

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup {
				check_ts = true,  -- integracja z Treesitter
				enable_check_bracket_line = true,   
				fast_wrap = {
					map = "<M-e>",
					chars = { "(", "{", "[", "'", '"' },
					pattern = string.gsub("[%)%>%]%}%,]", "%p", "%%%0"),
					end_key = "$",
					keys = "qwertyuiopzxcvbnmasdfghjkl", 
					check_comma = true,
					highlight = "Search",
					highlight_grey = "Comment",
				},
			}
		end
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		config = function()
			require("nvim-treesitter.config").setup {
				ensure_installed = { "lua", "python", "java", "c", "cpp", "c_sharp", "bash", "ada" },
				highlight = { enable = true },
				indent = { enable = true },
			}
		end,
	},

	-- motyw 
	{
		"sainnhe/everforest", 
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.everforest_background = "medium"
			vim.cmd.colorscheme("everforest")
		end,
	},

	 -- autouzupełnianie
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
	},
}, {})
