-- colorscheme

return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      -- custom options here
      commentStyle = { italic = true },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  {
    "hiroakis/cyberspace.vim",
  },
  {
    "slugbyte/lackluster.nvim",
  },
  {
    "tiagovla/tokyodark.nvim",
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "2giosangmitom/nightfall.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
