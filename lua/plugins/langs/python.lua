return {
    mason_packages = {
        "debugpy"
    },
    packages = {
        {
        "mfussenegger/nvim-dap-python",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        ft = "python",
        config = function()
            --local path = ""
            --require("dap-python").setup(path)
        end,
        },
    },
}
