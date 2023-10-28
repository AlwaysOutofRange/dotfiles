return {
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				groups = {
					all = { VertSplit = { fg = "bg3" } },
				},
				options = {
					styles = {
						comments = "italic",
						keywords = "bold",
						types = "italic,bold",
					},
				},
			})
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "main",
				dim_nc_background = true,
				disable_background = true,
			})
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				compile = true,
				dimInactive = true,
				theme = "wave",
				background = {
					dark = "dragon",
				},
			})
		end,
	},
}
