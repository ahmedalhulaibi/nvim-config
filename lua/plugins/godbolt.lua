return {
  {
    "ahmedalhulaibi/godbolt.nvim",
    commit = "7f3d1eeda6acfbcebaf9c38d33b43042eb15394a",
    lazy = false,
    main = "godbolt",
    opts = {
      line_mapping = { enabled = true, auto_scroll = true },
    },
    keys = {
      {
        "<leader>cga",
        function() require("godbolt").godbolt_zig("asm") end,
        desc = "Zig assembly pane",
      },
      {
        "<leader>cgi",
        function() require("godbolt").godbolt_zig("llvm") end,
        desc = "Zig LLVM IR pane",
      },
      {
        "<leader>cgr",
        function() require("godbolt.panes").refresh() end,
        desc = "Refresh Zig panes (force)",
      },
      {
        "<leader>cgq",
        function() require("godbolt.panes").close() end,
        desc = "Close Zig panes",
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
