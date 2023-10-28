-- Important stuff
return {
  { lazy = true, "nvim-lua/plenary.nvim" },

  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = { "Mason", "MasonInstall" },
    config = function()
      require("mason").setup()
    end,
  },

  -- yuck.vim - Syntax highlighting for yuck
  {
    "elkowar/yuck.vim",
    ft = { "yuck" },
  }
}
