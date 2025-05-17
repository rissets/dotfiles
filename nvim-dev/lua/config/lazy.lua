-- Install package manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Fixes Notify opacity issues
-- vim.o.termguicolors = true

-- Import color theme based on environment variable NVIM_THEME
local default_color_scheme = 'onedark'
local env_var_nvim_theme = os.getenv 'NVIM_THEME' or default_color_scheme

-- Define a table of theme modules
local themes = {
  nord = 'plugins.themes.nord',
  onedark = 'plugins.themes.onedark',
}

local function tabnine_build_path()
  -- Replace vim.uv with vim.loop if using NVIM 0.9.0 or below
  if vim.uv.os_uname().sysname == 'Windows_NT' then
    return 'pwsh.exe -file .\\dl_binaries.ps1'
  else
    return './dl_binaries.sh'
  end
end

-- Setup plugins
require('lazy').setup({
  require(themes[env_var_nvim_theme]),
  require 'plugins.telescope',
  require 'plugins.treesitter',
  require 'plugins.lsp',
  require 'plugins.autocomp',
  require 'plugins.none-ls',
  require 'plugins.lualine',
  require 'plugins.bufferline',
  require 'plugins.neo-tree',
  require 'plugins.alpha',
  require 'plugins.indent-blankline',
  require 'plugins.lazygit',
  -- require 'plugins.comment',
  require 'plugins.debug',
  require 'plugins.gitsigns',
  require 'plugins.snacks',

  require 'plugins.misc',
  require 'plugins.harpoon',
  -- require 'plugins.autosave',
  -- require 'plugins.copilot',
  -- require 'plugins.ai',

  require 'plugins.aerial',
  require 'plugins.md-render',
  require 'plugins.obsidian',

  require 'plugins.notify',
  require 'plugins.noice',
  require 'plugins.floatterm',
  require 'plugins.catppuccin',
  require 'plugins.zenmode',

  -- Language specific plugins
  require 'plugins.flutter',
  {
    'echasnovski/mini.nvim',
    version = false,
  },

  -- { 'codota/tabnine-nvim', build = tabnine_build_path() },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '󰃭 ',
      ft = '',
      init = '⚙',
      keys = '🗝',
      plugin = '',
      runtime = '',
      require = '',
      source = '',
      start = '',
      task = '',
      lazy = '󰒲 ',
    },
  },
})
