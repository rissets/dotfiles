vim.o.hlsearch = false -- Set highlight on search
vim.wo.number = true -- make line number default
vim.o.mouse = "a" -- enable mouse support
vim.o.clipboard = "unnamedplus" -- Sync clipboard between Os and Neovim
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Enable undofile
vim.o.ignorecase = true -- Ignore case when searching
vim.o.smartcase = true -- Ignore case when searching with lowercase
vim.wo.signcolumn = "yes" -- Always show sign column
vim.o.updatetime = 250
vim.o.timeoutlen = 400
vim.o.backup = false -- creates a backup file
vim.o.writebackup = false -- creates a backup file before overwriting
vim.o.completeopt = "menuone,noselect"
vim.opt.termguicolors = true -- set termguicolors to enable hightlight groups
vim.o.whichwrap = "bs<>[]hl"
vim.o.wrap = true -- wrap lines
vim.o.linebreak = true -- companion to wrap don't split words
vim.o.scrolloff = 4 -- number of lines to scroll when the cursor is 8 lines from the top or bottom
vim.o.sidescrolloff = 8 -- number of columns to scroll horizontally
vim.o.relativenumber = true -- set relative number
vim.o.numberwidth = 4 -- set number column width to 2 {default 4}
vim.o.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.o.tabstop = 4 -- number of spaces that a <Tab> in the file counts
vim.o.softtabstop = 4 -- number of spaces that a <Tab> key counts for while editing
vim.o.expandtab = true -- convert tabs to spaces
vim.o.cursorline = false -- highlight the current lines
vim.o.splitbelow = true -- split below instead of above
vim.o.splitright = true -- split right instead of left
vim.o.swapfile = false -- creates a swap file
vim.o.smartindent = true -- smart indentation
vim.o.showmode = false -- we don't need to see things link -- INSERT -- anymore
vim.o.showtabline = 2 -- always show tabstop
vim.o.backspace = "indent,eol,start" -- make backspace behave like most other programs
vim.o.pumheight = 10 -- limit completion items
vim.o.conceallevel = 0 -- so that I can see `` in markdown files
vim.o.fileencoding = "utf-8" -- the encoding written to files
vim.o.cmdheight = 0 -- more space for displaying messages
vim.o.autoindent = true -- enable autoindent
vim.opt.shortmess:append("c") -- don't pass messages to |ins-completion-menu|
vim.opt.iskeyword:append("-") -- treat dash separated words as a word text object
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- stop newline continution of comments
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- separate vim plugins from neovim in case vim still in use
