return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      term_colors = true,
      compile = {
        enabled = true,
        path = vim.fn.stdpath("cache") .. "/catppuccin",
      },
      styles = {
        comments = { "italic" },
        keywords = { "italic" },
      },
      integrations = {
        snacks = true,
        lazyvim = true,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          {
            section = "terminal",
            cmd = "neofetch",
            random = 10,
            indent = 4,
            height = 15,
          },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },
    },
  },
}
