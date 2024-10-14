return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufReadPre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format {
          async = true,
          lsp_fallback = true,
          timeout_ms = 500,
        }
      end,
      mode = { 'n', 'v' },
      desc = '[F]ormat buffer or selection',
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'isort', 'black' },
      html = { 'prettier' }, -- Changed from prettier to js-beautify
      scss = { 'prettier' }, -- Changed from prettier to stylelint
      css = { 'prettier' }, -- Changed from prettier to stylelint
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescriptreact = { 'prettier' },
    },
    notify_on_error = true,
    log_level = vim.log.levels.TRACE, -- Keep for debugging
  },
}
