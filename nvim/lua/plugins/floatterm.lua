return {
  {
    'akinsho/toggleterm.nvim',
    config = true,
    cmd = 'ToggleTerm',
    keys = { { '<Leader>,', '<cmd>ToggleTerm<cr>', desc = 'Toggle floating terminal' } },
    opts = {
      open_mapping = [[<c-\>]],
      direction = 'float',
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
      float_opts = {
        border = 'rounded', -- Optional: Add a rounded border
        -- width = 0.5,      -- Percentage of screen width (e.g., 50%)
        -- height = 0.5,     -- Percentage of screen height (e.g., 50%)
        width = 80, -- Number of columns (characters)
        height = 20, -- Number of rows (lines)
        -- Alternatively, use these for pixel-based sizing:
        -- width = 800,     -- Width in pixels
        -- height = 600,    -- Height in pixels
        x = nil, -- Optional: Horizontal position (nil for center)
        y = nil, -- Optional: Vertical position (nil for center)
        -- OR to position at the bottom:
        -- x = 0,
        -- y = vim.fn.winheight(0) - 20, -- 20 is terminal height
      },
    },
  },
}
