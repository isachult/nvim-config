return {
    'scalameta/nvim-metals', 
        dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
        require("metals").settings = {
            showImplicitArguments = true,
        }
        require("metals").bare_config().capabilities = require("cmp_nvim_lsp").default_capabilities()
        
		local nvim_metals_group = vim.api.nvim_create_augroup("metals", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "scala" },
			callback = function()
				require("metals").initialize_or_attach(require("metals").bare_config())
			end,
			group = nvim_metals_group,
		})
    end
}
    
