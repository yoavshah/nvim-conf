
local custom_attach = function(client, bufnr)

    local map = function(mode, l, r, opts)
        opts = opts or {}
        opts.silent = true

        vim.keymap.set(mode, l, r, opts)
    end


    
end




return {
   "neovim/nvim-lspconfig",
    config = function()
        
        local lspconfig = require("lspconfig")
        
        local langs = require("plugins.lsp.lang.all")
        local utils = require("utils")

        local capabilities = {} --require("cmp_nvim_lsp").default_capabilities()
        
        for lang, vars in pairs(langs) do
            vars["config_function"](lspconfig, capabilities, custom_attach)
        end

    end,

}




