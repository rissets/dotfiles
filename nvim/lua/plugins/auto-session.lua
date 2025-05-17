return {
  'rmagatti/auto-session',
  config = function()
    require('auto-session').setup {
      suppressed_dirs = { '~/', '~/Downloads', '/' },
      session_lens = {
        load_on_setup = true,
        previewer = true,
        theme_conf = { border = true },
        mappings = {
          delete_session = { 'n', '<Leader>das' },
          alternate_session = { 'n', '<Leader>sa' },
          copy_session = { 'n', '<Leader>sc' },
        },
      },
      vim.keymap.set('n', '<leader>ls', require('auto-session.session-lens').search_session, { noremap = true, silent = true }),
    }
  end,
}
