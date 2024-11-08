function ColorMyPencils(color)
  color = color or "nord"
  vim.cmd.colorscheme(color)
  vim.opt.background = "light"
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "arcticicestudio/nord-vim",
    priority = 100,
    config = function()
      -- ColorMyPencils()
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "latte", -- latte, frappe, macchiato, mocha
        background = {     -- :h background
          light = "latte",
          -- dark = "mocha",
        },
      })
      -- ColorMyPencils("catppuccin")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "dawn",  -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,
      })
      ColorMyPencils("rose-pine-dawn")
    end,
  }
}
