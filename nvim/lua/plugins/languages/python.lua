return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "ruff")
      table.insert(opts.ensure_installed, "pyright")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- RUFF: Handles Formatting & Linting
        ruff = {
          keys = {
            {
              "<leader>co",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Organize Imports",
            },
          },
        },
        -- PYRIGHT: Handles Type Checking & IntelliSense
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "standard",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
      },
      -- 3. Setup handlers to split responsibilities and prevent conflicts
      setup = {
        ruff = function()
          -- Handler 1: Disable Hover (keep Pyright for that)
          vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
            callback = function(args)
              local client = vim.lsp.get_client_by_id(args.data.client_id)
              if client and client.name == "ruff" then
                client.server_capabilities.hoverProvider = false
              end
            end,
          })
          -- Handler 2: Organize Imports on Save
          vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.py",
            callback = function()
              vim.lsp.buf.code_action({
                context = { only = { "source.organizeImports" } },
                apply = true,
              })
            end,
          })
        end,
        pyright = function()
          vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("lsp_attach_disable_pyright_formatting", { clear = true }),
            callback = function(args)
              local client = vim.lsp.get_client_by_id(args.data.client_id)
              if client and client.name == "pyright" then
                -- Disable formatting in favor of Ruff
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
              end
            end,
          })
        end,
      },
    },
  },
}
