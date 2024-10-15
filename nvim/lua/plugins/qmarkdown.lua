return {
	"quarto-dev/quarto-nvim",
	priority = 49,
	opts = {},
	config = function()
		local runner = require("quarto.runner")
		vim.keymap.set("n", "<localleader>rc", runner.run_cell, { desc = "run cell", silent = true })
		vim.keymap.set("n", "<localleader>ra", runner.run_above, { desc = "run cell and above", silent = true })
		vim.keymap.set("n", "<localleader>rA", runner.run_all, { desc = "run all cells", silent = true })
		vim.keymap.set("n", "<localleader>rl", runner.run_line, { desc = "run line", silent = true })
		vim.keymap.set("v", "<localleader>r", runner.run_range, { desc = "run visual range", silent = true })
		vim.keymap.set("n", "<localleader>RA", function()
			runner.run_all(true)
		end, { desc = "run all cells of all languages", silent = true })
	end,
	dependencies = {
		{
			"jmbuhr/otter.nvim",
			opts = {
				codeRunner = {
					enabled = true,
					default_method = "molten", -- 'molten' or 'slime'
					ft_runners = {}, -- filetype to runner, ie. `{ python = "molten" }`.
					-- Takes precedence over `default_method`
					never_run = { "yaml" }, -- filetypes which are never sent to a code runner
				},
			},
		},
	},
}
