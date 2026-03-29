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
    -- cmd = { '~/.local/share/nvim/nvim-java/packages/jdtls/1.54.0/bin/jdtls' },
    root_dir = vim.fs.root(0, { 'gradlew', '.git', 'mvnw' }),

    cmd = {
      "/usr/lib/jvm/java-21-openjdk-amd64/bin/java",
      -- '~/.local/share/nvim/nvim-java/packages/jdtls/1.54.0/bin/jdtls'
      '-Declipse.application=org.eclipse.jdt.ls.core.id1',
      '-Dosgi.bundles.defaultStartLevel=4',
      '-Declipse.product=org.eclipse.jdt.ls.core.product',
      '-Dlog.protocol=true',
      '-Dlog.level=ALL',
      '-Xmx1g',
      '--add-modules=ALL-SYSTEM',
      '--add-opens', 'java.base/java.util=ALL-UNNAMED',
      '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
      --
      --   -- Если вы используете lombok, скачайте jar с ним и поместите его в ~/.local/share/eclipse
      '-javaagent:' .. '~/.local/share/nvim/mason/share/jdtls/lombok.jar',
      --
      --   -- Следующий jar файл расположен внутри папки, в которую вы установили/распаковали jdtls.
      --   -- ВАЖНО: не забудьте изменить путь до jdtls ниже:
      '-jar', vim.fn.glob('~/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar'),
      --
      --   -- Стандартная конфигурация для jdtls также расположена внутри его папки.
      --   -- ВАЖНО: измените путь до jdtls, а также выберите конфиг-папку согласно вашей системе: config_win, config_linux или config_mac:
      '-configuration', '~/.local/share/nvim/mason/packages/jdtls/config_linux',
      --
      --   -- Переиспользуем workspace_folder определённый выше, чтобы хранить специфичные jdtls данные для проекта
      -- '-data', vim.fs.root(0, { 'gradlew', '.git', 'mvnw' }),
    },

    settings = {
      java = {
        eclipse = {
          downloadSources = true,
        },
        maven = {
          downloadSources = true,
        },
        gradle = {
          downloadSources = true,
        }
      },
    },

    -- bundles = {
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-jupiter-api_5.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java /packages/java-test/0.43.2/extension/./server/junit-jupiter-engine_5.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-j upiter-migrationsupport_5.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-jupiter-params_5.11.0.jar",
    --     "/home/georv/.lo cal/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-platform-commons_1.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/ extension/./server/junit-platform-engine_1.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-platform-launcher_1.11.0.ja r",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-platform-runner_1.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/package s/java-test/0.43.2/extension/./server/junit-platform-suite-api_1.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-platf orm-suite-commons_1.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-platform-suite-engine_1.11.0.jar",
    --     "/home/georv/.l ocal/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/junit-vintage-engine_5.11.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/e xtension/./server/org.apiguardian.api_1.1.2.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/org.eclipse.jdt.junit4.runtime_1.3.10 0.v20231214-1952.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/org.eclipse.jdt.junit5.runtime_1.1.300.v20231214-1952.jar",
    --     "/ho me/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/org.opentest4j_1.3.0.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43 .2/extension/./server/org.jacoco.core_0.8.14.202510111229.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-test/0.43.2/extension/./server/com.microsoft.java.test .plugin-0.43.1.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/java-debug/0.58.3/extension/./server/com.microsoft.java.debug.plugin-0.53.2.jar",
    --     "/home/georv/.local/ share/nvim/nvim-java/packages/spring-boot-tools/1.55.1/extension/./jars/io.projectreactor.reactor-core.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/spring-boot-to ols/1.55.1/extension/./jars/org.reactivestreams.reactive-streams.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/spring-boot-tools/1.55.1/extension/./jars/jdt-ls-com mons.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packages/spring-boot-tools/1.55.1/extension/./jars/jdt-ls-extension.jar",
    --     "/home/georv/.local/share/nvim/nvim-java/packag es/spring-boot-tools/1.55.1/extension/./jars/sts-gradle-tooling.jar",
    --   },

    -- This sets the `initializationOptions` sent to the language server
    -- If you plan on using additional eclipse.jdt.ls plugins like java-debug
    -- you'll need to set the `bundles`
    --
    -- See https://codeberg.org/mfussenegger/nvim-jdtls#java-debug-installation
    init_options = {
      -- ,
      settings = {
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
      },
    },
  },

  pyright = { cmd = { 'pyright-langserver', '--stdio' } },
  -- ts_ls = {},
  glsl_analyzer = {},
}

return servers
