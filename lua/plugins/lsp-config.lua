local custom_attach = function(client, bufnr)
    local map = function(mode, l, r, opts)
        opts = opts or {}
        opts.silent = true

        vim.keymap.set(mode, l, r, opts)
    end

    map("n", "<leader>gD", vim.lsp.buf.definition, { desc = "Go to Definition" })
    map("n", "<leader>gd", vim.lsp.buf.hover, { desc = "Information" })
    map("n", "<leader>gc", vim.lsp.buf.format, { desc = "Format" })
    map({ "n", "v" }, "<leader>gf", vim.lsp.buf.code_action, { desc = "Code Actions" })
end

return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")

        local langs = require("plugins.lsp.lang.all")

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        for lang, vars in pairs(langs) do
            vars["config_function"](lspconfig, capabilities, custom_attach)
        end
    end,

}
