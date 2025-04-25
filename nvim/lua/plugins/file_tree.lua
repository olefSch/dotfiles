return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
	view =  {
	  side = "right",
          width = 30,
	},
	renderer = {
	  indent_width = 3,
        },
        vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>"),
      }
    end,
  },
  {
    'akinsho/bufferline.nvim', 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup{}
      vim.opt.termguicolors = true
    end,
  },
}
