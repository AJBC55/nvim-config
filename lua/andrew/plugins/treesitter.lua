return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate", -- This replaces the `run` field
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
			indent = {
				enable = true,
			},
			ensure_installed = {
				"go",
				"bash",
				"c",
				"javascript",
				"json",
				"lua",
				"python",
				"rust",
				"html",
				"css",
			},
			sync_install = false,
			auto_install = true,
		})
	end,
}
