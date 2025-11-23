return {
  {
    "milanglacier/minuet-ai.nvim",
    event = "InsertEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local db_host = os.getenv("DATABRICKS_HOST")

      if not db_host then
        vim.notify("Minuet: DATABRICKS_HOST not set. Check your .env or .zshrc", vim.log.levels.WARN)
        return
      end

      local model_name = "databricks-meta-llama-3-3-70b-instruct"

      require("minuet").setup({
        virtualtext = {
          auto_trigger_ft = { "*" },
          keymap = {
            -- accept whole completion
            accept = "<A-A>",
            -- accept one line
            accept_line = "<A-a>",
            -- accept n lines (prompts for number)
            -- e.g. "A-z 2 CR" will accept 2 lines
            accept_n_lines = "<A-z>",
            -- Cycle to prev completion item, or manually invoke completion
            prev = "<A-[>",
            -- Cycle to next completion item, or manually invoke completion
            next = "<A-]>",
            dismiss = "<A-e>",
          },
        },
        provider = "openai_compatible",
        n_completions = 1,
        context_window = 4096,
        throttle = 1000, -- Wait 1s after typing stops
        debounce = 400,
        provider_options = {
          openai_compatible = {
            model = model_name,
            end_point = string.format("%s/serving-endpoints/%s/invocations", db_host, model_name),
            api_key = "DATABRICKS_TOKEN",
            stream = true,
            optional = {
              max_tokens = 128,
              stop = { "\n\n" },
            },
          },
        },
      })
    end,
  },
}
