local all_langs = {
    require("plugins.langs.python"),
}

local out = {
    packages = {},
    mason_packages = {},
    nonls_packages = {},
    lsp_config = {},
    dap_config = {},
}

for _, curr_lang in ipairs(all_langs) do
    for key, v in pairs(out) do
        if curr_lang[key] ~= nil then
            vim.list_extend(v, curr_lang[key])
        end
    end
end


return out
