return {
	"voldikss/vim-floaterm",
	config = function()
		local map = vim.keymap
		map.set(
			"n",
			"<leader>ft",
			"<cmd>:FloatermNew --height=0.6 --width=0.4 --wintype=float --name=floaterm1 --position=center --autoclose=2<CR>",
			{ desc = "New Floaterm window" }
		)
		map.set({ "n", "t" }, "<leader>flt", "<cmd>:FloatermToggle<CR>", { desc = "Toggle Floaterm window" })
	end,
}
