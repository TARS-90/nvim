return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { 'nvim-lua/plenary.nvim' },
		version = "0.1.8", -- last version that works
		config = function()
			require("telescope").setup({
				defaults = {
					preview = { treesitter = false, },
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
