-- Highlight, edit, and navigate code

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    -- 'nvim-treesitter/nvim-treesitter-refactor',
    -- 'nvim-treesitter/nvim-treesitter-context',
    -- 'nvim-treesitter/playground',
  },
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'css',
        'dockerfile',
        'html',
        'fish',
        'json',
        'lua',
        'python',
        'regex',
        'rust',
        'toml',
        'yaml',
        'javascript',
        'typescript',
        'sql',
        'java',
        'go',
        'gitignore',
        'vim',
        'markdown',
        'markdown_inline',
        'make',
        'cmake',
        'cpp',
        'vimdoc',
      },

      -- Autoinstall languages that are not ensure_installed
      -- auto_install = true

      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<c-spaces>',
          node_incremental = '<c-space>',
          scope_incremental = '<c-s>',
          node_decremental = '<M-space>',
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['aa'] = '@parameter.outer',
            ['ia'] = '@parameter.inner',
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ['<leader>a'] = '@parameter.inner',
          },
          swap_previous = {
            ['<leader>A'] = '@parameter.inner',
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            [']m'] = '@function.outer',
            [']]'] = '@class.outer',
          },
          goto_next_end = {
            [']M'] = '@function.outer',
            [']['] = '@class.outer',
          },
          goto_previous_start = {
            ['[m'] = '@function.outer',
            ['[['] = '@class.outer',
          },
          goto_previous_end = {
            ['[M'] = '@function.outer',
            ['[]'] = '@class.outer',
          },
        },
      },
      -- refactor = {
      --   -- highlight_definitions = { enable = true },
      --   -- highlight_current_scope = { enable = true },
      --   smart_rename = {
      --     enable = true,
      --     keymaps = {
      --       smart_rename = 'grr',
      --     },
      --   },
      --   navigation = {
      --     enable = true,
      --     keymaps = {
      --       goto_definition = 'gnd',
      --       list_definitions = 'gnD',
      --       list_definitions_toc = 'gO',
      --       goto_next_usage = '<a-*>',
      --       goto_previous_usage = '<a-#>',
      --     },
      --   },
      -- },
      -- context_commentstring = {
      --   enable = true,
      -- },
      -- playground = {
      --   enable = true,
      --   updatetime = 25,
      --   persist_queries = false,
      --   keybindings = {
      --     toggle_query_editor = 'o',
      --     toggle_hl_groups = 'i',
      --     toggle_injected_languages = 't',
      --     toggle_anonymous_nodes = 'a',
      --     toggle_language_display = 'I',
      --     focus_language = 'f',
      --     unfocus_language = 'F',
      --     update = 'R',
      --     goto_node = '<cr>',
      --     show_help = '?',
      --   },
      -- },
    }

    -- Register additional file extensions
    vim.filetype.add { extension = { tf = 'terraform' } }
    vim.filetype.add { extension = { tfvars = 'terraform' } }
    vim.filetype.add { extension = { pipeline = 'groovy' } }
    vim.filetype.add { extension = { multibranch = 'groovy' } }
  end,
}
