
config_function = function(lspconfig, capabilities, custom_attach)

    lspconfig.pyright.setup({
        on_attach = custom_attach,
        capabilities = capabilities,
        filetypes = {"python"}
    })
end



return {
    config_function = config_function,
    packages = { }, --"hrsh7th/cmp-nvim-lsp" },
    mason_packages = { "pyright" },
}


