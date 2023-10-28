return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    config = function()
      require "configs.telescope"
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup()
    end,
  },

  {
    "numToStr/Comment.nvim",
    lazy = true,
    config = function()
      require("Comment").setup()
    end,
  },

  {
    "Exafunction/codeium.nvim",
    config = function()
      require("codeium").setup()
    end,
  },

  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup()
    end,
  },

  -- {
  --   "andweeb/presence.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require "configs.presence"
  --   end,
  -- }
}
