return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("trouble").setup()
    vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, {desc = "Trouble Toggle"})
    vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end, {desc = "Workspace Diagnostics"})
    vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end, {desc = "Document Diapnostics"})
    vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end, {desc = "Quckfix"})
    vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end, {desc = "Loclist"})
    vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end, {desc = "Lsp References"})
  end
}
