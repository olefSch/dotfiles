return {
	{ "github/copilot.vim", lazy = false },

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			"github/copilot.vim",
			"nvim-lua/plenary.nvim",
		},
		build = "make tiktoken",
		opts = {
			prompts = {
				TypeHints = {
					prompt = "Add type hints to all values and especially for input variables of a function.",
					system_prompt = "You are a staff python developer.",
					mapping = "<leader>cct",
					description = "Type Hints for my vars.",
				},
				Docstrings = {
					prompt = "Add docstrings based in the Google format to all my selected function. Focus only on args, returns, and description.",
					system_prompt = "You are a staff developer for all programming languages.",
					mapping = "<leader>ccd",
					description = "Generates docstrings",
				},
			},
		},
		keys = {
			{ "<leader>cc", ":CopilotChatToggle<cr>", mode = "n", desc = "Toggles chat" },
			{ "<leader>cce", ":CopilotChatExplain<cr>", mode = "v", desc = "Explanation for section" },
			{ "<leader>ccr", ":CopilotChatReview<cr>", mode = "v", desc = "Review for section" },
			{ "<leader>ccf", ":CopilotChatFix<cr>", mode = "v", desc = "Fix for section" },
			{ "<leader>cco", ":CopilotChatOptimize<cr>", mode = "v", desc = "Optimization for section" },
		},
		lazy = true,
		event = "VeryLazy",
	},
}
