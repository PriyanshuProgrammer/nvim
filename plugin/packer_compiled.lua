-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/priyanshu/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/priyanshu/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/priyanshu/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/priyanshu/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/priyanshu/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  catppuccin = {
    config = { "\27LJ\2\n�\1\0\0\3\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\1\0B\0\2\1K\0\1\0\16colorscheme\bcmd\bvim\1\0\2\fflavour\nmocha\27transparent_background\2\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\3\25component_separators\5\23section_separators\5\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/mason-org/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/mason-org/mason.nvim"
  },
  ["none-ls.nvim"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/none-ls.nvim",
    url = "https://github.com/nvimtools/none-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\5\0\30\0Y6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0B\0\1\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\b\0005\4\t\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\n\0005\4\v\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\f\0005\4\r\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\14\0005\4\15\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\16\0005\4\17\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\18\0005\4\19\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\20\0005\4\21\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\22\0005\4\23\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\24\0005\4\25\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\26\0005\4\27\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\28\0005\4\29\0B\0\4\1K\0\1\0\1\0\1\abg\tnone\16EndOfBuffer\1\0\1\abg\tnone\15SignColumn\1\0\1\abg\tnone\14VertSplit\1\0\1\abg\tnone\15StatusLine\1\0\1\abg\tnone\19NvimTreeNormal\1\0\1\abg\tnone\20TelescopeBorder\1\0\1\abg\tnone\20TelescopeNormal\1\0\1\abg\tnone\16FloatBorder\1\0\1\abg\tnone\16NormalFloat\1\0\1\abg\tnone\rNormalNC\1\0\1\abg\tnone\vNormal\16nvim_set_hl\bapi\bvim\tload\1\0\1\nstyle\vdarker\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/priyanshu/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\5\0\30\0Y6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0B\0\1\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\b\0005\4\t\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\n\0005\4\v\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\f\0005\4\r\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\14\0005\4\15\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\16\0005\4\17\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\18\0005\4\19\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\20\0005\4\21\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\22\0005\4\23\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\24\0005\4\25\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\26\0005\4\27\0B\0\4\0016\0\5\0009\0\6\0009\0\a\0)\2\0\0'\3\28\0005\4\29\0B\0\4\1K\0\1\0\1\0\1\abg\tnone\16EndOfBuffer\1\0\1\abg\tnone\15SignColumn\1\0\1\abg\tnone\14VertSplit\1\0\1\abg\tnone\15StatusLine\1\0\1\abg\tnone\19NvimTreeNormal\1\0\1\abg\tnone\20TelescopeBorder\1\0\1\abg\tnone\20TelescopeNormal\1\0\1\abg\tnone\16FloatBorder\1\0\1\abg\tnone\16NormalFloat\1\0\1\abg\tnone\rNormalNC\1\0\1\abg\tnone\vNormal\16nvim_set_hl\bapi\bvim\tload\1\0\1\nstyle\vdarker\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\3\25component_separators\5\23section_separators\5\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\1\0B\0\2\1K\0\1\0\16colorscheme\bcmd\bvim\1\0\2\fflavour\nmocha\27transparent_background\2\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
