return {
	'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "scala", "java"},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
            additional_vim_regex_highlighting = false,
        })
    end
}
