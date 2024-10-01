return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
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
			folding = {
				enable = false,
				disable = { "python", "markdown" },
			},
			ensure_installed = {
				"go",
				"dart",
				"bash",
				"c",
				"cpp",
				"javascript",
				"json",
				"lua",
				"python",
				"rust",
				"typescript",
				"html",
				"css",
			},
			sync_install = false,
			auto_install = true,
		})
	end,
}
