local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd
local opt = {}

vim.g.mapleader = " "

-- remove trailing whitespaces
cmd([[autocmd BufWritePre * %s/\s\+$//e]])
cmd([[autocmd BufWritePre * %s/\n\+\%$//e]])

-- commentor maps
-- vim registers _ as /
map("n", "<C-_>", ":CommentToggle<CR>", opt)
map("v", "<C-_>", ":CommentToggle<CR>", opt)

-- Telescope options
map("n", "<Leader>pp", [[<Cmd> Telescope builtin <CR>]], opt)
-- Recently used files
map("n", "<Leader>m", [[<Cmd> Telescope oldfiles <CR>]], opt)
-- Show open buffers
map("n", ";", [[<Cmd> Telescope buffers <CR>]], opt)
-- Find in current buffer
map("n", "<Leader>/", [[<Cmd> Telescope current_buffer_fuzzy_find <CR>]], opt)
-- git files
map("n", "<Leader>gf", [[<Cmd> Telescope git_files <CR>]], opt)
-- Folders files
map("n", "<Leader>ff", [[ <Cmd> Telescope file_browser <CR>]], opt)
-- All Files
map("n", "<Leader>bfs", [[<Cmd> Telescope find_files <CR>]], opt)
-- ripgrep like grep through directory
map("n", "<Leader>rg", [[<Cmd> Telescope live_grep <CR>]], opt)
-- Show file git difs in new window
map("n", "<Leader>gd", ":vert Git diff<CR>", opt)
-- Show git status with changes
map("n", "<Leader>gs", [[<Cmd> Telescope git_status <CR>]], opt)
-- Show git commits
map("n", "<Leader>gc", [[<Cmd> Telescope git_commits <CR>]], opt)
-- Help Tags
map("n", "<Leader>fh", [[<Cmd> Telescope help_tags <CR>]], opt)
-- Kill Current buffer
map("n", "<Leader>bd", ":bd!<CR>", opt)
-- Disable highlighting
map("n", "<Leader>h", ":noh<CR>", opt)

-- compe stuff
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn["compe#complete"]()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    else
        return t "<S-Tab>"
    end
end

function _G.completions()
    local npairs
    if
        not pcall(
            function()
                npairs = require "nvim-autopairs"
            end
        )
     then
        return
    end

    if vim.fn.pumvisible() == 1 then
        if vim.fn.complete_info()["selected"] ~= -1 then
            return vim.fn["compe#confirm"]("<CR>")
        end
    end
    return npairs.check_break_line_char()
end
