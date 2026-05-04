return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { 'nvim-lua/plenary.nvim' },
		version = "0.1.8", -- last version that works
		config = function()
			local theme = {
				TelescopeNormal = { bg = "#2E2E33" },
				TelescopeBorder = { bg = "#2E2E33" },
				TelescopePromptNormal = { bg = "#2E2E33" },
				TelescopePromptBorder = { bg = "#2E2E33", fg = "#26A269" },
				TelescopePreviewNormal = { bg = "#2E2E33" },
				TelescopePreviewBorder = { bg = "#2E2E33" },
				TelescopeSelection = { bg = "#196944", fg = "none", bold = true },
				TelescopeMatching = { bg ="#2E2E33", fg = "#26A269", bold = true },
			}

			for group, settings in pairs(theme) do
				vim.api.nvim_set_hl(0, group, settings)
			end

			require("telescope").setup({
				defaults = {
					preview = { treesitter = true, },
					prompt_prefix = "",
					selection_caret = " ",
					entry_prefix = " ",
				}
			})

			-- setting key bindings
			local builtin =	require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", function() builtin.find_files() end, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>fg", function() builtin.live_grep() end, { desc = "Live Grep" })
			vim.keymap.set("n", "<leader>fh", function() builtin.help_tags() end, { desc = "Help Tags" })	
		end,
	},
}
