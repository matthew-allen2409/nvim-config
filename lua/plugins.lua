local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'catppuccin/nvim',
    'preservim/nerdcommenter',
    'tpope/vim-fugitive',
    'tpope/vim-surround',
    'nvim-telescope/telescope-fzf-native.nvim',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.rust_analyzer.setup {
                settings = {
                    ['rust-analyzer'] = {},
                },
            }
            lspconfig.ts_ls.setup {}
            lspconfig.lua_ls.setup {}
            require'lspconfig'.pylsp.setup{}
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        },
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
    },
}

require("lazy").setup(plugins)

-- plugin configurations
require("lsp")
require("theme")
require('nvim-tree').setup()
require('keybinds')
require('cmp-config')
