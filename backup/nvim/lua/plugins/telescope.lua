return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Fuzzy find recent files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find string in cwd" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find string under cursor in cwd" })
		end,
	},
	-- {
	--   'nvim-telescope/telescope-ui-select.nvim',
	--   -- This is your opts table
	--   config = function()
	--     require("telescope").setup({
	--       extensions = {
	--         ["ui-select"] = {
	--           require("telescope.themes").get_dropdown {
	--           }
	--         }
	--       }
	--     })
	--     require("telescope").load_extension("ui-select")
	--   end
	-- }
}
