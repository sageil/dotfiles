return require('packer').startup(function()
  use {'wbthomason/packer.nvim'}
use {'glepnir/lspsaga.nvim'}
    use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {'Shatur/neovim-ayu'}
  use {'tpope/vim-fugitive'}
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use 'hrsh7th/cmp-buffer'
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  use {'onsails/lspkind-nvim'}
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {'shaunsingh/nord.nvim'}
  use {'mfussenegger/nvim-dap'}
  use {'theHamsta/nvim-dap-virtual-text'}
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'rcarriga/nvim-dap-ui',requires = {"mfussenegger/nvim-dap"} }
  use {'folke/lsp-colors.nvim'}


end)
