-- lazy.nvim
return {
  "chrisgrieser/nvim-spider",
  keys = {
    {
      "w",
      "<cmd>lua require('spider').motion('w', {skipInsignificantPunctuation = false})<CR>",
      mode = { "n", "o", "x" },
      desc = "Move to end of word",
    },
    {
      "e",
      "<cmd>lua require('spider').motion('e', {skipInsignificantPunctuation = false})<CR>",
      mode = { "n", "o", "x" },
      desc = "Move to start of next word",
    },
    {
      "b",
      "<cmd>lua require('spider').motion('b', {skipInsignificantPunctuation = false})<CR>",
      mode = { "n", "o", "x" },
      desc = "Move to start of previous word",
    },
  },
}
