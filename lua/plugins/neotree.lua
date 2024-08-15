return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",

		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
    opts = {
        filesystem = {
            window = {
              mappings = {
                ["<F5>"] = "refresh",
                --["t"] = "open",
              }
            },
          
            filtered_items = {
                visible = true,
                show_hidden_count = true,
                hide_dotfiles = false,
                hide_gitignored = true,
                hide_by_name = {
               -- '.git',
               -- '.DS_Store',
               -- 'thumbs.db',
                },
                never_show = {},
            },
        }
    },
            config = function()
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")
	end,
}
