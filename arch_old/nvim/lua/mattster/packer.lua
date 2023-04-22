vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can managa itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  use('mbbill/undotree')
  -- marks
  use 'theprimeagen/harpoon'

  -- qol
  use 'unblevable/quick-scope'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'kdheepak/lazygit.nvim'

  -- themes
  use 'folke/tokyonight.nvim'

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }
  use 'glepnir/dashboard-nvim'
  use('neovim/nvim-lspconfig')
  use('MunifTanjim/prettier.nvim')
  use('jose-elias-alvarez/null-ls.nvim')

  -- tree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  --buffers
  use { 'romgrk/barbar.nvim', wants = 'nvim-web-devicons' }

  use 'f-person/git-blame.nvim'
  use({
      "NTBBloodbath/galaxyline.nvim",
      -- your statusline
      config = function()
          require("galaxyline.themes.eviline")
      end,
      -- some optional icons
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
  })

  use'terrortylor/nvim-comment',

  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
end)
