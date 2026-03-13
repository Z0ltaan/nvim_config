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
  jdtls = {
    root_dir = vim.fs.root(0, { 'gradlew', '.git', 'mvnw' }),

    -- settings = {
    --   java = {},
    -- },

    -- This sets the `initializationOptions` sent to the language server
    -- If you plan on using additional eclipse.jdt.ls plugins like java-debug
    -- you'll need to set the `bundles`
    --
    -- See https://codeberg.org/mfussenegger/nvim-jdtls#java-debug-installation
    --
    -- If you don't plan on any eclipse.jdt.ls plugins you can remove this
    --     `{"sha256": "55243ef57851f12b070ad14f7f5bb8302daceeebc5bce5ece5fa6edb23e1145c",
    -- "allowed": true}`
    --  to the `java.imports.gradle.wrapper.checksums` preference.
    init_options = {
      -- settings = {
        java = {
          implementationsCodeLens = { enabled = true },
          imports = {
            gradle = {
              enabled = true,
              wrapper = {
                enabled = true,
                checksums = {
                  {
                    sha256 = '55243ef57851f12b070ad14f7f5bb8302daceeebc5bce5ece5fa6edb23e1145c',
                    allowed = true,
                  },
                },
              },
            },
          },
        },
      -- },
    },
  },

  pyright = { cmd = { 'pyright-langserver', '--stdio' } },
  -- ts_ls = {},
  glsl_analyzer = {},
}

return servers
