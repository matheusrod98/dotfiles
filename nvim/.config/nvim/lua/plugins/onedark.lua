return {
	"olimorris/onedarkpro.nvim",
	priority = 1000,
	config = function()
		require("onedarkpro").setup({
			-- colors = {
			-- 	dark = { bg = "#111111" },
			-- }
		})
	end,
}
