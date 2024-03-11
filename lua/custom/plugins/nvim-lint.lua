return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      javascript = {
        "eslint_d"
      },
      typescript = {
        "eslint_d"
      },
      javascriptreact = {
        "eslint_d"
      },
      typescriptreact = {
        "eslint_d"
      }
    }
    vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost" }, {
      callback = function()
        local lint_status, _lint = pcall(require, "lint")
        if lint_status then
          _lint.try_lint()
        end
      end,
    })
  end
}
