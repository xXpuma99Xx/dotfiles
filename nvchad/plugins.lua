local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "CRAG666/code_runner.nvim",
    init = function()
      require("core.utils").lazy_load "code_runner.nvim"
    end,
    dependencies = {
      {
        "nvim-lua/plenary.nvim",
      },
    },
    opts = function()
      return require "custom.configs.code_runner"
    end,
    config = function(_, opts)
      require("code_runner").setup(opts)
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    opts = function()
      return require "custom.configs.lualine"
    end,
    config = function(_, opts)
      require("lualine").setup(opts)
    end,
  },

  {
    "romgrk/barbar.nvim",
    lazy = false,
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    dependencies = {
      {
        "nvim-tree/nvim-web-devicons",
        "lewis6991/gitsigns.nvim",
      },
    },
    opts = function()
      return require "custom.configs.barbar"
    end,
    version = "^1.0.0",
  },

  {
    "yamatsum/nvim-cursorline",
    lazy = false,
    opts = function()
      return require "custom.configs.cursorline"
    end,
    config = function(_, opts)
      require("nvim-cursorline").setup(opts)
    end,
  },

  {
    "akinsho/git-conflict.nvim",
    version = "*",
    lazy = false,
    opts = function()
      return require "custom.configs.git-conflict"
    end,
    config = function(_, opts)
      require("git-conflict").setup(opts)
    end,
  },

  {
    "woosaaahh/sj.nvim",
    -- init = function()
    --   require("core.utils").lazy_load "sj.nvim"
    -- end,
    lazy = false,
    opts = function()
      return require "custom.configs.sj"
    end,
    config = function(_, opts)
      require("sj").setup(opts)
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
}

return plugins
