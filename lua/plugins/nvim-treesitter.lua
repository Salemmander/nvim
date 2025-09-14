return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false, -- No lazy loading, per docs
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"python",
				"c",
				"cpp",
				"bash",
				"markdown",
				"lua",
			},
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = { enable = true }, -- Defaults: gnn/gsn for expand, gsn for shrink
		})
	end,
}
