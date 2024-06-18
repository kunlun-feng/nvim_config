return
{
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup {
                options = {
                    -- 使用 nvim 内置lsp
                    diagnostics = "nvim_lsp",
                    -- 左侧让出 nvim-tree 的位置
                    offsets = { {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    } }
                }
            }
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        opt = {},
        config = function()
            require("ibl").setup()
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = true,
    },
    {
        "goolord/alpha-nvim",
        event = "VeryLazy",
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    },
    {
        "RRethy/vim-illuminate",
        event = "VeryLazy",
        config = function()
            require('illuminate').configure()
        end
    },
}
