return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
	"bash", 
	"bibtex",
	"c", 
	"css",
	"csv", 
	"dockerfile", 
	"helm", 
	"lua",
	"markdown", 
	"markdown_inline",
	"python", 
        "query", 
	"sql", 
	"toml", 
	"vim", 
	"vimdoc", 
	"yaml",
      },

      highlight = {
        enable = true,
      },
    }
  end,
}
