return {
  {
    "isomorph.nvim",
    dir = "/home/ahmed/workspace/va/isomorph.nvim",
    config = function()
      require("isomorph").setup({
        cmd = { "/home/ahmed/.cargo/bin/isomorph-lsp" },
      })
    end,
  },
}
