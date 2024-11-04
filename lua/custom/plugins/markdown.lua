-- Markdown preview plugin
return {
  'MeanderingProgrammer/render-markdown.nvim',
  opts = {
    file_types = { 'markdown', 'Avante' },
  },
  ft = { 'markdown', 'Avante' },
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
}
