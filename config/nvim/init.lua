local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tanvirtin/monokai.nvim'
    use 'sunjon/shade.nvim'
    use 'sheerun/vim-polyglot'
    use 'terryma/vim-multiple-cursors'
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'sbdchd/neoformat'
    use {
        'TimUntersberger/neogit',
        requires = 'nvim-lua/plenary.nvim'
    }
    use {
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    }
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }
    use { 
        'ibhagwan/fzf-lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'numToStr/Comment.nvim'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'p00f/nvim-ts-rainbow'
    use 'akinsho/toggleterm.nvim'
    if packer_bootstrap then
        require('packer').sync()
    end
end)

require'Comment'.setup {}
require'toggleterm'.setup {}
require'nvim-tree'.setup {}
require'monokai'.setup {}
require'lualine'.setup {}
require'trouble'.setup {}
require'todo-comments'.setup {}
require'neogit'.setup {}
require'gitsigns'.setup {}
require'nvim-ts-autotag'.setup {}
-- TODO: find better autopairs.
require'nvim-autopairs'.setup {} 
require"nvim-treesitter.configs".setup {
    ensure_installed = "maintained",
    autotag = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
require'fzf-lua'.setup {
    winopts = {
        split         = "belowright new",
    }
}
require'shade'.setup {}
require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    resolve_timeout = 800;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = {
        border = { '', '' ,'', ' ', '', '', '', ' ' },
        winhighlight = 
        "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
        max_width = 120,
        min_width = 60,
        max_height = math.floor(vim.o.lines * 0.3),
        min_height = 1,
    };
    source = {
        path = true;
        buffer = true;
        calc = true;
        nvim_lsp = true;
        nvim_lua = true;
        vsnip = true;
        ultisnips = true;
        luasnip = true;
    };
}

lsp = require'lspconfig'
lsp.clangd.setup{}
lsp.hls.setup{}
lsp.rls.setup{}
lsp.tsserver.setup{}

local set          = vim.opt
set.tabstop        = 4
set.shiftwidth     = 4
set.softtabstop    = 4
set.expandtab      = true
set.number         = true
set.relativenumber = true
set.cursorline     = true
set.colorcolumn    = "80"
set.textwidth      = 80
set.smartcase      = true
set.undofile       = true
set.undodir        = fn.stdpath('data') .. "/undo/"
vim.g.mapleader    = " "

local map = vim.api.nvim_set_keymap
map('n', '<C-h>',     '<C-W><C-H>',             {noremap = false})
map('n', '<C-j>',     '<C-W><C-J>',             {noremap = false})
map('n', '<C-k>',     '<C-W><C-K>',             {noremap = false})
map('n', '<C-l>',     '<C-W><C-L>',             {noremap = false})
map('v', '<Tab>',     '>gv',                    {noremap = false})
map('v', '<S-Tab>',   '<gv',                    {noremap = false})
map('n', '<Tab>',     ':NvimTreeToggle<CR>',    {noremap = false})
map('n', '<Leader>g', ':Neogit kind=split<CR>', {noremap = false})
map('n', '<Leader>f', ':FzfLua files<CR>',      {noremap = false})
map('n', '<Leader>v', ':FzfLua buffers<CR>',    {noremap = false})
map('n', '<Leader>s', ':FzfLua live_grep_native<CR>', {noremap = false})
map('n', '<Leader>t', ':ToggleTerm<CR>',        {noremap = false})
map('t', '<Esc>',     '<C-\\><C-n>',            {noremap = false})

