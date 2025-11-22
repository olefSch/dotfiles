return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = {
      compile = true,
      undercurl = true,
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      transparent = false,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
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
