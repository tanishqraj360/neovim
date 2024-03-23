return {
	"akinsho/toggleterm.nvim",
	version = "*",

	config = function()
		vim.keymap.set("n", "<C-t>", ":ToggleTerm size=10 dir=~ direction=horizontal name=neovim<CR>", {})
		require("toggleterm").setup()
	end,
}
