return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require('telescope')

        telescope.setup({
            pickers ={
                find_files = {
                    hidden = true,
                    theme = "dropdown",
                    previewer = false,
                },
                buffers = {
                    theme = "dropdown",
                    previewer = false,
                },
                help_tags = {
                    theme = "dropdown",
                    previewer = false,
                },
                live_grep = {
                    theme = "dropdown",
                },
            }
        })
        
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
}
