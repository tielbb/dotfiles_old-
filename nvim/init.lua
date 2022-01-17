local options = {
    termguicolors = true,
    fileencodings = 'ucs-bom,utf-8,default,latin1,gb2312,gb18030,gbk,cp936',
    clipboard = "unnamedplus",
    cmdheight = 2,
    fileencoding = "utf-8",
    ignorecase = true,
    mouse = "a",
    pumheight = 10,
    showmode = false,
    smartcase = true,
    smartindent = true,
    swapfile = false,
    timeoutlen = 100,
    updatetime = 300,
    writebackup = false,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    softtabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = true,
    signcolumn = "yes",
    wrap = false
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do vim.opt[k] = v end

vim.cmd "set whichwrap+=<,>,[,],h,l"

require('packer_list')

vim.cmd [[
try
  colorscheme NeoSolarized
  set background=light
  " set background=dark
  " let g:gruvbox_italic=1
  " colorscheme gruvbox
  " colorscheme hybrid
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- startify
vim.g.startify_files_number = 8
vim.g.startify_custom_header = {}
vim.g.startify_custom_footer = {}

vim.g.startify_bookmarks = {
    '~/AppData/Local/nvim/init.lua',
    '~/AppData/Local/nvim/lua/packer_list.lua',
    'D:/software/RunAny/RunAny.ini'

}

-- airline
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline#extensions#tabline#formatter'] = 'default'
vim.g['airline_theme'] = 'solarized'

-- NERDTree
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.api.nvim_set_keymap('n', '<Leader>n', ':NERDTreeFocus<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', {noremap = true})
