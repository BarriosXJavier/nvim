return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre", "BufNewFile" },
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  { "wakatime/vim-wakatime",            lazy = false },

  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },

  {
    "ellisonleao/carbon-now.nvim",
    lazy = true,
    cmd = "CarbonNow",
    opts = { [[ your custom config here ]] },
  },

  {
    "NvChad/ui",
    config = function()
      require "nvchad"
    end,
  },

  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  { "williamboman/mason-lspconfig.nvim" },

  { "mfussenegger/nvim-dap" },

  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    lazy = false,   -- This plugin is already lazy
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  { "nvim-tree/nvim-web-devicons" },

  { "nvchad/volt",                lazy = true },

  { "nvchad/menu",                lazy = true },

  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        enabled = true,
        execution_message = {
          message = function() return "AutoSaved at " .. vim.fn.strftime("%H:%M:%S") end,
          dim = 0.18,
          cleaning_interval = 1000,
          color = "LightGreen",
        },
        trigger_events = { "InsertLeave", "TextChanged" },
        debounce_delay = 1000,
        conditions = {
          exists = true,
          filename_is_not = {},
          filetype_is_not = {},
          modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
      }
    end,
  }
}
