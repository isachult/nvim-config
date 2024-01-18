return {
    'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
    config = function()
        local lsp_zero = require('lsp-zero')
        lsp_zero.extend_lspconfig()

        require'lspconfig'.jdtls.setup{
            PATH = "prepend",
        }
        
        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        require('mason').setup({
            PATH = "prepend",
        })
        require('mason-lspconfig').setup({
            ensure_installed = {'clangd', 'jdtls', 'r_language_server'},
            handlers = {
                lsp_zero.default_setup
            },
        })
    end
}
