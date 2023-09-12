---@diagnostic disable: undefined-global
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-live-grep-args.nvim',
        'debugloop/telescope-undo.nvim',
        -- 'aaronhallaert/advanced-git-search.nvim'
      }
    }
  }

  use {
    "AckslD/nvim-neoclip.lua",
    config = function()
      require('neoclip').setup()
    end,
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run =
  'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  -- treesitter
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  use 'lewis6991/gitsigns.nvim'

  -- marks
  use 'theprimeagen/harpoon'
  use 'theprimeagen/git-worktree.nvim'

  -- qol
  use 'christoomey/vim-tmux-navigator'
  use 'unblevable/quick-scope'
  use 'tpope/vim-surround'
  use('mbbill/undotree')
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }

  -- cloak
  use("laytan/cloak.nvim")

  -- zen mode
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
    end
  }

  -- copilot
  use 'github/copilot.vim'

  -- tpope
  use 'tpope/vim-fugitive'

  -- lazy
  use 'kdheepak/lazygit.nvim'

  -- themes
  use 'folke/tokyonight.nvim'
  use "rebelot/kanagawa.nvim"

  -- tree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = {
      { 'MunifTanjim/nui.nvim' }
    }
  }

  -- buffers
  use { 'romgrk/barbar.nvim', wants = 'nvim-web-devicons' }

  -- statusline
  use({
    "NTBBloodbath/galaxyline.nvim",
    -- your statusline
    config = function()
      require("galaxyline.themes.eviline")
    end,
    -- some optional icons
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  })

  -- comments
  use 'terrortylor/nvim-comment'

  -- start screen
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }

  -- ?
  use 'mfussenegger/nvim-dap'

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
  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')

  -- rust
  use 'simrat39/rust-tools.nvim'

  -- wiki
  use 'vimwiki/vimwiki'
end)
