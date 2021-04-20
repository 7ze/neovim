--| @plugins.lua |--

-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

return require('packer').startup( function() 
  use 'wbthomason/packer.nvim'			-- package manager
  use 'kyazdani42/nvim-tree.lua'		-- explorer
  use "neovim/nvim-lspconfig"			-- built-in LSP client
  use "hrsh7th/nvim-compe"			-- autocompletion plugin
end )
