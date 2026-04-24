local servers = {
  clangd = { cmd = { 'clangd' } },
  cmake = {},
  lua_ls = {
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
  -- cssls = {},
  -- html = {},
  pyright = { cmd = { 'pyright-langserver', '--stdio' } },
  -- ts_ls = {},
  -- glsl_analyzer = {},
}

return servers
