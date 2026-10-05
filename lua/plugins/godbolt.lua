return {
  {
    "ahmedalhulaibi/godbolt.nvim",
    commit = "6b57bb165b3f892d8ed354769eb30e35c3bcaedf",
    lazy = false,
    main = "godbolt",
    opts = {
      line_mapping = { enabled = true, auto_scroll = true },
    },
    keys = {
      {
        "<leader>cga",
        function() require("godbolt").godbolt_zig("asm") end,
        desc = "Zig assembly (build-aware)",
      },
      {
        "<leader>cgi",
        function() require("godbolt").godbolt_zig("llvm") end,
        desc = "Zig LLVM IR (build-aware)",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.spec = opts.spec or {}
      table.insert(opts.spec, { "<leader>cg", group = "Godbolt" })
    end,
  },
}
