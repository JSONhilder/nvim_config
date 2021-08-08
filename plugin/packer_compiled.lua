-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jason/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jason/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jason/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jason/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jason/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.luasnip\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    wants = { "friendly-snippets" }
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.statusline\frequire\0" },
    load_after = {
      ["vim-gruvbox8"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.gitsigns\frequire\0" },
    load_after = {
      ["plenary.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\flspkind\19plugins.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/lspkind-nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.autopairs\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14colorizer\19plugins.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    commands = { "CommentToggle" },
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fcomment\19plugins.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after = { "nvim-autopairs" },
    after_files = { "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plugins.compe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-compe",
    wants = { "LuaSnip" }
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.lspconfig\frequire\0" },
    load_after = {
      ["nvim-lspinstall"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    after = { "nvim-lspconfig" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\nô\1\0\1\b\0\n\0\0146\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\3\0019\1\4\0019\3\5\0'\4\6\0'\5\a\0'\6\b\0005\a\t\0B\1\6\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\19<cmd>close<CR>\6q\6n\nbufnr\24nvim_buf_set_keymap\bapi\17startinsert!\bcmd\bvim4\0\1\4\0\3\0\0056\1\0\0009\1\1\1'\3\2\0B\1\2\1K\0\1\0\21Closing terminal\bcmd\bvim$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\1¿\vtoggle“\4\1\0\6\0\20\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0025\3\5\0005\4\6\0=\4\a\3=\3\b\2B\0\2\0016\0\0\0'\2\t\0B\0\2\0029\0\n\0\18\3\0\0009\1\v\0005\4\f\0005\5\r\0=\5\b\0043\5\14\0=\5\15\0043\5\16\0=\5\17\4B\1\3\0023\2\18\0007\2\19\0002\0\0ÄK\0\1\0\20_lazygit_toggle\0\ron_close\0\fon_open\0\1\0\3\vborder\vsingle\vheight\0032\nwidth\3»\1\1\0\4\14direction\nfloat\bcmd\flazygit\bdir\fgit_dir\vhidden\2\bnew\rTerminal\24toggleterm.terminal\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\4\vborder\vsingle\vheight\0032\nwidth\3»\1\rwinblend\3\3\20shade_filetypes\1\0\n\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\15\18close_on_exit\2\14direction\15horizontal\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\r<number>\20shade_terminals\2\nsetup\15toggleterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    after = { "lsp_signature.nvim" },
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    load_after = {
      ["vim-gruvbox8"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    after = { "vim-gruvbox8" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    after = { "gitsigns.nvim", "popup.nvim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  ["popup.nvim"] = {
    load_after = {
      ["plenary.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    commands = { "Telescope" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    commands = { "Telescope" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["twig.vim"] = {
    loaded = true,
    path = "/home/jason/.local/share/nvim/site/pack/packer/start/twig.vim"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/jason/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-gruvbox8"] = {
    after = { "galaxyline.nvim", "nvim-web-devicons" },
    config = { "\27LJ\2\n%\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\ntheme\frequire\0" },
    load_after = {
      ["packer.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jason/.local/share/nvim/site/pack/packer/opt/vim-gruvbox8"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14blankline\19plugins.others\frequire\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope-fzf-native.nvim', 'telescope-media-files.nvim', 'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CommentToggle lua require("packer.load")({'nvim-comment'}, { cmd = "CommentToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'LuaSnip', 'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim', 'plenary.nvim', 'nvim-toggleterm.lua'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'lspkind-nvim', 'nvim-lspinstall', 'nvim-colorizer.lua', 'nvim-treesitter-textobjects', 'nvim-treesitter', 'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
