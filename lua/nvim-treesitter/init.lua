--| treesitter/@init.lua |--

require'nvim-treesitter.configs'.setup {
    ensure_installed = O.treesitter.ensure_installed,
    highlight = {
        enable = O.treesitter.highlight.enabled, -- false will disable the whole extension
        use_languagetree = true,
    },
}
