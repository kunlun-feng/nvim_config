return {
  "folke/tokyonight.nvim",
  dependencies = {
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",
    "utilyre/barbecue.nvim",
    "SmiteshP/nvim-navic",
  },
  config = function()
    vim.cmd[[colorscheme tokyonight]]
    require('lualine').setup{
      options = {
        -- ... your lualine config
        theme = 'tokyonight'
        -- ... your lualine config
      }
    }
    -- Lua
    require('barbecue').setup {
      -- ... your barbecue config
      theme = 'tokyonight',
      -- ... your barbecue config
    }
  end
}
