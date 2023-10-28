return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    config = function()
      require("nvim-tree").setup()
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("configs.treesitter")
    end,
  },

  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
      require("configs.bufferline")
    end,
  },

  {
    "echasnovski/mini.statusline",
    config = function()
      require("mini.statusline").setup({ set_vim_settings = true })
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = {
          char = "|",
          smart_indent_cap = true,
          highlight = "NonText",
        }
      })
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.opt.timeout = true
      vim.opt.timeoutlen = 400
    end,
    config = function()
      require("configs.which-key")
    end,
  },

  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      require("configs.alpha")
    end
  },
}
