
local utils = require("utils")
local langs = require("plugins.lsp.lang.all")

packages = utils.extract_and_flatten(langs, "packages")


return packages
