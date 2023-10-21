return {
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',   -- optional for vim.ui.select
    },
    config = true,
    keys = {
      {"<leader>fr", "<cmd>FlutterRun<cr>", "Flutter Run"},
      { "<leader>fd", "<cmd>FlutterDevices<cr>", "Flutter Devices"},
      {"<leader>fe", "<cmd>FlutterEmulators<cr>", "Flutter Emulators"}
    }
  }
}
