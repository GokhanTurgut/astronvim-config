return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function() require("catppuccin").setup {} end,
  },
  {
    "folke/tokyonight.nvim",
    as = "tokyonight",
    config = function() require("tokyonight").setup {} end,
  },
  {
    "iamcco/markdown-preview.nvim",
    event = "BufRead",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  { "jose-elias-alvarez/typescript.nvim" },
}
