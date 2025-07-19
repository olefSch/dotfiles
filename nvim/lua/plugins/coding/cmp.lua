return {
	"hrsh7th/nvim-cmp",
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			sources = {
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
			},
			mapping = cmp.mapping.preset.insert({
				-- Navigate between completion items
				["<C-p>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
				["<C-n>"] = cmp.mapping.select_next_item({ behavior = "select" }),

				-- `Enter` key to confirm completion
				["<CR>"] = cmp.mapping.confirm({ select = false }),

				-- Ctrl+Space to trigger completion menu
				["<C-Space>"] = cmp.mapping.complete(),

				-- Scroll up and down in the completion documentation
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),
			}),
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
		})
	end,
}
