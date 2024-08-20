
local utils = require("utils")
local langs = require("plugins.lsp.lang.all")


local mason_packages = utils.extract_and_flatten(langs, "mason_packages")

for _, v in ipairs(mason_packages) do
    print(v)
end

--print(langs["lua"]["mason_packages"])

return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            mason_packages,
        },
    },
}
