return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "cspell", -- Spell checking
        -- hangs up so i use brew "hadolint", -- Dockerfile linting
        "yamllint", -- YAML linting
        "prettier", -- Markdown/YAML/JSON formatter
        "shfmt", -- Shell script formatter
      })
    end,
  },

  -- 2. NVIM-LINT: Connect CSpell and others
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "cspell" },
        python = { "cspell" },
        yaml = { "yamllint" },
        dockerfile = { "hadolint" },
      },
    },
  },

  -- 3. CONFORM: Formatting (Prettier for non-Python files)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        yaml = { "prettier" },
        markdown = { "prettier" },
        json = { "prettier" },
        dockerfile = { "prettier" },
        sh = { "shfmt" },
      },
    },
  },
}
