--| @plugins.lua |--

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup( function() 
  use 'wbthomason/packer.nvim'			-- package manager
  use 'kyazdani42/nvim-tree.lua'		-- explorer
  use "neovim/nvim-lspconfig"			-- built-in LSP client
  use "hrsh7th/nvim-compe"			-- autocompletion plugin
end )
