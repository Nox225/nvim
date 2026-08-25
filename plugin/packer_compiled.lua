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
local package_path_str = "/home/fifi/.cache/nvim/packer_hererocks/2.1.1774638290/share/lua/5.1/?.lua;/home/fifi/.cache/nvim/packer_hererocks/2.1.1774638290/share/lua/5.1/?/init.lua;/home/fifi/.cache/nvim/packer_hererocks/2.1.1774638290/lib/luarocks/rocks-5.1/?.lua;/home/fifi/.cache/nvim/packer_hererocks/2.1.1774638290/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/fifi/.cache/nvim/packer_hererocks/2.1.1774638290/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["flash.nvim"] = {
    config = { "\27LJ\2\n¸\3\0\0\a\0\31\00066\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\b\0009\1\t\0019\1\n\0015\3\v\0'\4\f\0009\5\r\0005\6\14\0B\1\5\0016\1\b\0009\1\t\0019\1\n\0015\3\15\0'\4\16\0009\5\17\0005\6\18\0B\1\5\0016\1\b\0009\1\t\0019\1\n\1'\3\19\0'\4\20\0009\5\21\0005\6\22\0B\1\5\0016\1\b\0009\1\t\0019\1\n\0015\3\23\0'\4\24\0009\5\25\0005\6\26\0B\1\5\0016\1\b\0009\1\t\0019\1\n\1'\3\27\0'\4\28\0009\5\29\0005\6\30\0B\1\5\1K\0\1\0\1\0\1\tdesc\24Toggle Flash Search\vtoggle\n<c-s>\6c\1\0\1\tdesc\22Treesitter Search\22treesitter_search\6R\1\3\0\0\6o\6x\1\0\1\tdesc\17Remote Flash\vremote\6r\6o\1\0\1\tdesc\21Flash Treesitter\15treesitter\6S\1\4\0\0\6n\6x\6o\1\0\1\tdesc\nFlash\tjump\6s\1\4\0\0\6n\6x\6o\bset\vkeymap\bvim\nmodes\1\0\1\nmodes\0\tchar\1\0\1\tchar\0\1\0\1\fenabled\1\nsetup\nflash\frequire\0" },
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/flash.nvim",
    url = "https://github.com/folke/flash.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-blame.nvim"] = {
    config = { "\27LJ\2\n2\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0\21gitblame_enabled\6g\bvim\0" },
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gitgraph.nvim"] = {
    config = { "\27LJ\2\nü\1\0\1\6\0\t\0\0206\1\0\0006\3\1\0009\3\2\3'\4\3\0B\1\3\0016\1\1\0009\1\4\1'\3\5\0009\4\6\0'\5\a\0&\3\5\3B\1\2\0016\1\1\0009\1\2\1'\3\b\0009\4\6\0'\5\a\0&\3\5\3B\1\2\1K\0\1\0\19:DiffviewOpen \a^!\thash\18DiffviewOpen \vnotify\18DiffviewClose\bcmd\bvim\npcallÅ\1\0\2\b\0\a\0\0176\2\0\0009\2\1\2'\4\2\0009\5\3\0'\6\4\0009\a\3\1&\4\a\4B\2\2\0016\2\0\0009\2\5\2'\4\6\0009\5\3\0'\6\4\0009\a\3\1&\4\a\4B\2\2\1K\0\1\0\19:DiffviewOpen \bcmd\t~1..\thash\18DiffviewOpen \vnotify\bvim8\0\1\4\1\2\0\b6\1\0\0009\3\1\0B\1\2\2-\2\0\0\5\1\2\0X\1\1Ä1\0\0\0K\0\1\0\0\0\nmatch\rtonumber†\3\1\0\5\1\18\0004-\0\0\0\15\0\0\0X\1\15Ä6\0\0\0009\0\1\0009\0\2\0-\2\0\0B\0\2\2\15\0\0\0X\1\bÄ6\0\0\0009\0\1\0009\0\3\0-\2\0\0+\3\2\0B\0\3\0011\0\0\0002\0!Ä6\0\0\0009\0\4\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0009\0\6\0B\0\1\2.\0\0\0006\0\0\0009\0\4\0'\2\a\0B\0\2\0016\0\0\0009\0\4\0'\2\b\0B\0\2\0016\0\t\0'\2\n\0B\0\2\0029\0\v\0004\2\0\0005\3\f\0B\0\3\0016\0\0\0009\0\1\0009\0\r\0'\2\14\0005\3\15\0003\4\16\0=\4\17\3B\0\3\1K\0\1\0K\0\1\0\0Ä\rcallback\0\1\0\2\tonce\2\rcallback\0\14WinClosed\24nvim_create_autocmd\1\0\2\14max_count\3à'\ball\2\tdraw\rgitgraph\frequire\rwincmd _\rwincmd |\25nvim_get_current_win\17botright new\bcmd\19nvim_win_close\22nvim_win_is_valid\bapi\bvimÕ\3\1\0\a\0\23\0\29+\0\0\0006\1\0\0'\3\1\0B\1\2\0029\1\2\0015\3\3\0005\4\4\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\v\0003\5\n\0=\5\f\0043\5\r\0=\5\14\4=\4\15\3B\1\2\0016\1\16\0009\1\17\0019\1\18\1'\3\19\0'\4\20\0003\5\21\0005\6\22\0B\1\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\20GitGraph Toggle\0\15<leader>gl\6n\bset\vkeymap\bvim\nhooks\27on_select_range_commit\0\21on_select_commit\1\0\2\21on_select_commit\0\27on_select_range_commit\0\0\vformat\vfields\1\6\0\0\thash\14timestamp\vauthor\16branch_name\btag\1\0\2\14timestamp\22%H:%M:%S %d-%m-%Y\vfields\0\fsymbols\1\0\2\vcommit\6*\17merge_commit\6M\1\0\4\fsymbols\0\vformat\0\nhooks\0\fgit_cmd\bgit\nsetup\rgitgraph\frequire\0" },
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/gitgraph.nvim",
    url = "https://github.com/isakbm/gitgraph.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/catgoose/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-scrollbar"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/fifi/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: git-blame.nvim
time([[Config for git-blame.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0\21gitblame_enabled\6g\bvim\0", "config", "git-blame.nvim")
time([[Config for git-blame.nvim]], false)
-- Config for: flash.nvim
time([[Config for flash.nvim]], true)
try_loadstring("\27LJ\2\n¸\3\0\0\a\0\31\00066\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\b\0009\1\t\0019\1\n\0015\3\v\0'\4\f\0009\5\r\0005\6\14\0B\1\5\0016\1\b\0009\1\t\0019\1\n\0015\3\15\0'\4\16\0009\5\17\0005\6\18\0B\1\5\0016\1\b\0009\1\t\0019\1\n\1'\3\19\0'\4\20\0009\5\21\0005\6\22\0B\1\5\0016\1\b\0009\1\t\0019\1\n\0015\3\23\0'\4\24\0009\5\25\0005\6\26\0B\1\5\0016\1\b\0009\1\t\0019\1\n\1'\3\27\0'\4\28\0009\5\29\0005\6\30\0B\1\5\1K\0\1\0\1\0\1\tdesc\24Toggle Flash Search\vtoggle\n<c-s>\6c\1\0\1\tdesc\22Treesitter Search\22treesitter_search\6R\1\3\0\0\6o\6x\1\0\1\tdesc\17Remote Flash\vremote\6r\6o\1\0\1\tdesc\21Flash Treesitter\15treesitter\6S\1\4\0\0\6n\6x\6o\1\0\1\tdesc\nFlash\tjump\6s\1\4\0\0\6n\6x\6o\bset\vkeymap\bvim\nmodes\1\0\1\nmodes\0\tchar\1\0\1\tchar\0\1\0\1\fenabled\1\nsetup\nflash\frequire\0", "config", "flash.nvim")
time([[Config for flash.nvim]], false)
-- Config for: gitgraph.nvim
time([[Config for gitgraph.nvim]], true)
try_loadstring("\27LJ\2\nü\1\0\1\6\0\t\0\0206\1\0\0006\3\1\0009\3\2\3'\4\3\0B\1\3\0016\1\1\0009\1\4\1'\3\5\0009\4\6\0'\5\a\0&\3\5\3B\1\2\0016\1\1\0009\1\2\1'\3\b\0009\4\6\0'\5\a\0&\3\5\3B\1\2\1K\0\1\0\19:DiffviewOpen \a^!\thash\18DiffviewOpen \vnotify\18DiffviewClose\bcmd\bvim\npcallÅ\1\0\2\b\0\a\0\0176\2\0\0009\2\1\2'\4\2\0009\5\3\0'\6\4\0009\a\3\1&\4\a\4B\2\2\0016\2\0\0009\2\5\2'\4\6\0009\5\3\0'\6\4\0009\a\3\1&\4\a\4B\2\2\1K\0\1\0\19:DiffviewOpen \bcmd\t~1..\thash\18DiffviewOpen \vnotify\bvim8\0\1\4\1\2\0\b6\1\0\0009\3\1\0B\1\2\2-\2\0\0\5\1\2\0X\1\1Ä1\0\0\0K\0\1\0\0\0\nmatch\rtonumber†\3\1\0\5\1\18\0004-\0\0\0\15\0\0\0X\1\15Ä6\0\0\0009\0\1\0009\0\2\0-\2\0\0B\0\2\2\15\0\0\0X\1\bÄ6\0\0\0009\0\1\0009\0\3\0-\2\0\0+\3\2\0B\0\3\0011\0\0\0002\0!Ä6\0\0\0009\0\4\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0009\0\6\0B\0\1\2.\0\0\0006\0\0\0009\0\4\0'\2\a\0B\0\2\0016\0\0\0009\0\4\0'\2\b\0B\0\2\0016\0\t\0'\2\n\0B\0\2\0029\0\v\0004\2\0\0005\3\f\0B\0\3\0016\0\0\0009\0\1\0009\0\r\0'\2\14\0005\3\15\0003\4\16\0=\4\17\3B\0\3\1K\0\1\0K\0\1\0\0Ä\rcallback\0\1\0\2\tonce\2\rcallback\0\14WinClosed\24nvim_create_autocmd\1\0\2\14max_count\3à'\ball\2\tdraw\rgitgraph\frequire\rwincmd _\rwincmd |\25nvim_get_current_win\17botright new\bcmd\19nvim_win_close\22nvim_win_is_valid\bapi\bvimÕ\3\1\0\a\0\23\0\29+\0\0\0006\1\0\0'\3\1\0B\1\2\0029\1\2\0015\3\3\0005\4\4\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\v\0003\5\n\0=\5\f\0043\5\r\0=\5\14\4=\4\15\3B\1\2\0016\1\16\0009\1\17\0019\1\18\1'\3\19\0'\4\20\0003\5\21\0005\6\22\0B\1\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\20GitGraph Toggle\0\15<leader>gl\6n\bset\vkeymap\bvim\nhooks\27on_select_range_commit\0\21on_select_commit\1\0\2\21on_select_commit\0\27on_select_range_commit\0\0\vformat\vfields\1\6\0\0\thash\14timestamp\vauthor\16branch_name\btag\1\0\2\14timestamp\22%H:%M:%S %d-%m-%Y\vfields\0\fsymbols\1\0\2\vcommit\6*\17merge_commit\6M\1\0\4\fsymbols\0\vformat\0\nhooks\0\fgit_cmd\bgit\nsetup\rgitgraph\frequire\0", "config", "gitgraph.nvim")
time([[Config for gitgraph.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)

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
