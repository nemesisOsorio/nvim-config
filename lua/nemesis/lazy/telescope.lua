return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_strategy = "horizontal",
        },
      })

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fw',
        '<cmd>lua require("telescope.builtin").grep_string({ prompt_title = "Search for Current Word", search = vim.fn.expand("<cword>") })<CR>',
        {})
      vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
      vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
      vim.keymap.set('n', '<leader>fm', builtin.lsp_document_symbols, {})

      vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
            })

          }
        }
      }
      require("telescope").load_extension("ui-select")
    end,
  },
}
