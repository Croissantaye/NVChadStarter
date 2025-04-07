return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },

  {
      "ntpeters/vim-better-whitespace",
      lazy = false,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
    enabled = false,
  	-- opts = {
  	-- 	ensure_installed = {
  	-- 		"vim", "lua", "vimdoc",
  	--     "html", "css"
  	-- 	},
  	-- },
    -- enabled = false,
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
  	    "html", "css", "python"
  		},
  	},
  },
}
