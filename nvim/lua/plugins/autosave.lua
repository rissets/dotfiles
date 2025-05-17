return {
  'okuuva/auto-save.nvim',
  version = '^1.0.0',                       -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
  cmd = 'ASToggle',                         -- optional for lazy loading on command
  event = { 'InsertLeave', 'TextChanged' }, -- optional for lazy loading on trigger events
  opts = {
    -- your config goes here
    -- or just leave it empty :)
  },
  -- vim.api.nvim_create_autocmd('User', {
  --   pattern = 'AutoSaveDisable',
  --   group = group,
  --   callback = function(opts)
  --     vim.notify('AutoSave disabled', vim.log.levels.INFO)
  --   end,
  -- }),
  -- config = function()
  --   require('auto-save').setup {
  --     enabled = true,
  --     execution_message = 'AutoSave: saved at ' .. vim.fn.strftime '%H:%M:%S',
  --     events = { 'InsertLeave', 'TextChanged' },
  --     conditions = {
  --       exists = true,
  --       filetype_is_not = {},
  --       modifiable = true,
  --     },
  --     write_all_buffers = false,
  --     on_off_commands = true,
  --     clean_command_line_interval = 0,
  --     debounce_delay = 135,
  --   }
  --
  --   vim.api.nvim_set_keymap('n', '<leader>as', ':ASToggle<CR>', { noremap = true, silent = true })
  --   vim.api.nvim_set_keymap('n', '<leader>ad', ':ASDisable<CR>', { noremap = true, silent = true })
  --   vim.api.nvim_set_keymap('n', '<leader>ae', ':ASEnable<CR>', { noremap = true, silent = true })
  -- end,
}
