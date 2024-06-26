
function ColorMyPencils(color)
    color = color or "nord"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

return {
    { "arcticicestudio/nord-vim" ,
        priority = 1000,
        config = function ()
            ColorMyPencils()
        end,
    },
}
