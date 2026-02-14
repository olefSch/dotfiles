return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        prettier = {
          prepend_args = { "--prose-wrap", "always" },
        },
      },
    },
  },
}
