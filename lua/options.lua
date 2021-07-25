local opt = vim.opt
local g = vim.g

-- Turn these off at startup, will be enabled later just before loading the theme
vim.cmd([[
    syntax off
    filetype off
    filetype plugin indent off
]])

-- netrw settings
g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25
g.netrw_localrmdir = 'rm -r'

--don't write to the ShaDa file on startup
vim.opt.shadafile = "NONE"

--set termguicolors
vim.o.termguicolors = true

--fish slows things down
vim.opt.shell = "/bin/bash"

opt.mouse = "a"
opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.visualbell = true
opt.hlsearch = true
opt.lazyredraw = true
opt.linebreak = true
opt.swapfile = false
opt.splitbelow = true
opt.splitright = true
opt.virtualedit = "all"
opt.backspace = "indent,eol,start"
opt.updatetime = 250
opt.timeoutlen = 400

-- indentline
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true
g.indentLine_faster = 1
g.indentLine_setConseal = 0

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2

-- shortmess options
opt.shortmess:append("asI") --disable intro

-- disable tilde on end of buffer:
vim.cmd("let &fcs='eob: '")

local disabled_built_ins = {
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end

--neovide
g.neovide_fullscreen = true
-- vim.o.guifont = "FiraCode Nerd Font:h15"
