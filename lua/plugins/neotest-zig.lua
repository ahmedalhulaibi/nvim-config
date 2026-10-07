return {
  {
    "nvim-neotest/neotest",
    dependencies = { "ahmedalhulaibi/neotest-zig" },
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      opts.adapters["neotest-zig"] = {}
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      if not vim.tbl_contains(opts.ensure_installed, "zig") then
        table.insert(opts.ensure_installed, "zig")
      end
    end,
  },
}
