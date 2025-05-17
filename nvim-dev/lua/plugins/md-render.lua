return {
  { 'dhruvasagar/vim-table-mode', ft = { 'markdown' } },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown', 'Avante', 'copilot-chat', 'codecompanion' },
    opts = {
      render_modes = true,
      file_types = { 'markdown', 'Avante', 'copilot-chat', 'codecompanion' },
      sign = {
        enabled = false,
      },
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && pnpm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
  config = function()
    require('render_markdown').setup {
      render = {
        bullet = {
          enabled = true,
          icons = { '● ', '○ ', '◆ ', '◇ ' },
          ordered_icons = function(level, index, value)
            value = vim.trim(value)
            local value_index = tonumber(value:sub(1, #value - 1))
            return string.format('%d. ', value_index > 1 and value_index or index)
          end,
          left_pad = 0,
          right_pad = 0,
          highlight = 'RenderMarkdownBullet',
        },
      },
    }
  end,
}
