local opts = { noremap = true, silent = false }
return {
  "zk-org/zk-nvim",
  lazy = false,
  keys = {
    {
      "<leader>zn",
      mode = "n",
      "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>",
      desc = "Create a new zk note.",
      opts,
    },
    { "<leader>zo", mode = "n", "<Cmd>ZkNotes { sort = {'modified'} }<CR>", desc = "Open notes.", opts },
    { "<leader>zt", mode = "n", "<Cmd>ZkTags<CR>", desc = "Open notes associated with the selected tags.", opts },
    {
      "<leader>zf",
      mode = "n",
      "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>",
      desc = "Search for the notes matching a given query",
      opts,
    },
    {
      "<leader>zf",
      mode = "v",
      ":'<,'>ZkMatch<CR>",
      desc = "Search for the notes matching the current visual selection",
      opts,
    },
  },
  config = function()
    require("zk").setup({
      -- can be "telescope", "fzf", "fzf_lua", "minipick", or "select" (`vim.ui.select`)
      -- it's recommended to use "telescope", "fzf", "fzf_lua", or "minipick"
      picker = "fzf_lua",

      lsp = {
        -- `config` is passed to `vim.lsp.start_client(config)`
        config = {
          cmd = { "zk", "lsp" },
          name = "zk",
          -- on_attach = ...
          -- etc, see `:h vim.lsp.start_client()`
        },

        -- automatically attach buffers in a zk notebook that match the given filetypes
        auto_attach = {
          enabled = true,
          filetypes = { "markdown" },
        },
      },
    })
  end,
}
