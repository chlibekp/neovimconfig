return {
	"neovim/nvim-lspconfig",
	depencendies = {
		"saghen/blink.cmp"
	},
	opts = {
		servers = {
			lua_ls = {},
			gopls = {},
		}
	},
	config = function(_, opts)
		for server, config in pairs(opts.servers) do
			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end
}

