for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end

-- Alternatively, target specific groups like functions or variables:
-- vim.api.nvim_set_hl(0, '@lsp.type.function', {})
