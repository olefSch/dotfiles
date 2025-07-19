return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      require("kanagawa").setup({
        -- comming
      })
      vim.cmd("colorscheme kanagawa-wave") 
    end,
  },
}
