--145.239.94.107vcker This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  
	use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'

    use 'catgoose/nvim-colorizer.lua'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

	use {
		'nvim-telescope/telescope.nvim',
		branch = 'master',
		requires = { 'nvim-lua/plenary.nvim' }
	}
    use {
    	'nvim-tree/nvim-tree.lua',
    	requires = { 'nvim-tree/nvim-web-devicons' }
    }

	use {
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup({})
		end
	}

    use 'tpope/vim-surround'

    -- use({
    --     "sphamba/smear-cursor.nvim",
    --     config = function()
    --         require("smear_cursor").setup({
    --             stiffness = 0.8,                      -- 0.6      [0, 1]
    --             trailing_stiffness = 0.6,             -- 0.45     [0, 1]
    --             stiffness_insert_mode = 0.7,          -- 0.5      [0, 1]
    --             trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
    --             damping = 0.95,                       -- 0.85     [0, 1]
    --             damping_insert_mode = 0,           -- 0.9      [0, 1]
    --             distance_stop_animating = 0.5,        -- 0.1      > 0
    --         })
    --     end,
    -- })

    use({
        "folke/flash.nvim",
        config = function()
            require("flash").setup({
                modes = {
                    char = {
                        enabled = false,
                    },
                },

            })

                local flash = require("flash")

                vim.keymap.set({ "n", "x", "o" }, "s", flash.jump, { desc = "Flash" })
                vim.keymap.set({ "n", "x", "o" }, "S", flash.treesitter, { desc = "Flash Treesitter" })
                vim.keymap.set("o", "r", flash.remote, { desc = "Remote Flash" })
                vim.keymap.set({ "o", "x" }, "R", flash.treesitter_search, { desc = "Treesitter Search" })
                vim.keymap.set("c", "<c-s>", flash.toggle, { desc = "Toggle Flash Search" })
            end,
        })

    use "petertriho/nvim-scrollbar"

	use 'Mofiqul/vscode.nvim'

    use 'numToStr/Comment.nvim'

    use 'RRethy/vim-illuminate'

    use('lukas-reineke/indent-blankline.nvim')

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use("nvim-treesitter/nvim-treesitter-context")


    use {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

	use('mbbill/undotree')

	use('tpope/vim-fugitive')

    use {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end
    }

	use {
		'isakbm/gitgraph.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		},
		dependencies = { 'sindrets/diffview.nvim' },
		config = function()
			local gitgraph_win = nil
 
			require('gitgraph').setup({
				git_cmd = "git",
				symbols = {
					merge_commit = 'M',
					commit = '*',
				},
				format = {
					timestamp = '%H:%M:%S %d-%m-%Y',
					fields = { 'hash', 'timestamp', 'author', 'branch_name', 'tag' },
				},
				hooks = {
					on_select_commit = function(commit)
						pcall(vim.cmd, "DiffviewClose")
						vim.notify('DiffviewOpen ' .. commit.hash .. '^!')
						vim.cmd(':DiffviewOpen ' .. commit.hash .. '^!')
					end,
					on_select_range_commit = function(from, to)
						vim.notify('DiffviewOpen ' .. from.hash .. '~1..' .. to.hash)
						vim.cmd(':DiffviewOpen ' .. from.hash .. '~1..' .. to.hash)
					end,
				},
			})
 
			vim.keymap.set("n", "<leader>gl", function()
				if gitgraph_win and vim.api.nvim_win_is_valid(gitgraph_win) then
					vim.api.nvim_win_close(gitgraph_win, true)
					gitgraph_win = nil
					return
				end
 
				vim.cmd("botright new")
				gitgraph_win = vim.api.nvim_get_current_win()
 
				vim.cmd("wincmd |")
				vim.cmd("wincmd _")
 
				require("gitgraph").draw({}, {
					all = true,
					max_count = 5000,
				})
 
				vim.api.nvim_create_autocmd("WinClosed", {
					once = true,
					callback = function(args)
						if tonumber(args.match) == gitgraph_win then
							gitgraph_win = nil
						end
					end,
				})
			end, { desc = "GitGraph Toggle" })
		end,
	}

    use {
        "sindrets/diffview.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    }

	use('lewis6991/gitsigns.nvim')

	use {
		"f-person/git-blame.nvim",
		config = function()
			vim.g.gitblame_enabled = 0
		end
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig', tag = 'v2.4.0',},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

end)
