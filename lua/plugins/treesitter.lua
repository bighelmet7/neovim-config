return {
	-- it may fail the first time
	-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#packernvim
	"nvim-treesitter/nvim-treesitter",
	build = function()
		pcall(require("nvim-treesitter.install").update({ with_sync = true }))
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"help",
				"c",
				"lua",
				"yaml",
				"html",
				"css",
				"bash",
				"dockerfile",
				"dot",
				"python",
				"go",
				"rust",
				"graphql",
                "java",
				"json",
				"make",
				"markdown",
				"regex",
				"svelte",
				"tsx",
				"toml",
				"typescript",
				"javascript",
				"sql",
				"hcl",
				"terraform",
                "verilog",
                "templ",
                "gleam",
			},
			sync_install = false,
			ignore_install = { "php", "phpdoc" },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true, disable = { "python" } },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-SPACE>",
					node_incremental = "<C-SPACE>",
					scope_incremental = "<C-ESC>",
					node_decremental = "<C-BACKSPACE>",
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				move = {
					enable = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						["]m"] = "@function.outer",
						["]]"] = "@class.outer",
					},
					goto_next_end = {
						["]M"] = "@function.outer",
						["]["] = "@class.outer",
					},
					goto_previous_start = {
						["[m"] = "@function.outer",
						["[["] = "@class.outer",
					},
					goto_previous_end = {
						["[M"] = "@function.outer",
						["[]"] = "@class.outer",
					},
				},
				swap = {
					enable = true,
					swap_next = {
						["<leader>a"] = "@parameter.inner",
					},
					swap_previous = {
						["<leader>A"] = "@parameter.inner",
					},
				},
			},
		})
	end,
}
