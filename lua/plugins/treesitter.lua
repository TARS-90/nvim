return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = "v0.9.2", -- latest stable version for Neovim v0.10.4
		build = ":TSUpdate",
		lazy = false,
		config = function()
			require("nvim-treesitter.configs").setup {
				ensure_installed = { 
					"lua", 
					"python", 
					"java", 
					"c", 
					"cpp", 
					"c_sharp", 
					"bash", 
					"ada" 
				},
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			}
		end,
	},
}
