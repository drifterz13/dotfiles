return {
	"norcalli/nvim-colorizer.lua",
	event = "VeryLazy",
	config = function()
		require("colorizer").setup({
			css = {
				css = true,
				names = true,
				RGB = true,
				mode = "background",
			},
			scss = {
				css = true,
				names = true,
				RGB = true,
				mode = "background",
			},
			html = {
				css = true,
				names = true,
				RGB = true,
				mode = "background",
			},
			javascriptreact = {
				css = true,
				names = true,
				RGB = true,
				mode = "background",
			},
			tsx = {
				css = true,
				names = true,
				RGB = true,
				mode = "background",
			},
		}, {
			css = true,
			names = true,
			RGB = true,
			mode = "background",
		})
	end,
}
