require 'config.options'
require 'config.snippets'
require 'config.keymaps'
require 'config.lazy'
require 'plugins.mini'
require('onedark').toggle()
-- require 'plugins.tabnine'

-- Function to check if a file exists
local function file_exists(file)
  local f = io.open(file, 'r')
  if f then
    f:close()
    return true
  else
    return false
  end
end

-- Path to the session file
local session_file = '.session.vim'

-- Check if the session file exists in the current directory
if file_exists(session_file) then
  vim.cmd('source ' .. session_file) -- Load the session file
end
