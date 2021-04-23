--| @plugins.lua |--

-- installs packer if not already installed
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

return require('packer').startup(
function(use)
  use 'wbthomason/packer.nvim'

  -- lsp and completion
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'

  -- Telescope
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

  -- explorer and icons
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'akinsho/nvim-bufferline.lua'

  -- colorschemes
  use 'christianchiarulli/nvcode-color-schemes.vim'
  -- use "norcalli/nvim-colorizer.lua" #color visualizer
end
)
