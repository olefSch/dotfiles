return {
  {
    "echasnovski/mini.indentscope",
    lazy = true,
    event = "VeryLazy",
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "Trouble",
          "alpha",
          "dashboard",
          "fzf",
          "help",
          "lazy",
          "mason",
          "notify",
          "snacks_dashboard",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })

    vim.api.nvim_create_autocmd("User", {
      pattern = "SnacksDashboardOpened",
      callback = function(data)
        vim.b[data.buf].miniindentscope_disable = true
      end,
    })

    end,
  },
}
