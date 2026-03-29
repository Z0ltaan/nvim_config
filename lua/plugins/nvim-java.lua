return {
  'nvim-java/nvim-java',
  config = function()
    require('java').setup(
      {
        lombok = {
          enable = true,
          -- version = '1.18.40',
        },

        java_test = {
          enable = false,
          -- version = '0.40.1',
        },

        java_debug_adapter = {
          enable = false,
          -- version = '0.58.2',
        },

        spring_boot_tools = {
          enable = true,
          version = '1.55.1',
        },

        jdk = {
          auto_install = false,
          version = '21',
        },

        log = {
          use_console = true,
          use_file = true,
          level = 'info',
          log_file = '~' .. '/nvim-java.log',
          max_lines = 1000,
          show_location = false,
        },
      }
    )
    vim.lsp.enable('jdtls')
  end,
}
