return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = true,
  config = function()
    require('nvim-treesitter.configs').setup {
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['af'] = { query = '@function.outer', desc = 'Select around a function' },
            ['if'] = { query = '@function.inner', desc = 'Select inside a function' },

            ['ab'] = { query = '@block.outer', desc = 'Select around a block' },
            ['ib'] = { query = '@block.inner', desc = 'Select inside a block' },

            ['ac'] = { query = '@call.outer', desc = 'Select around a call' },
            ['ic'] = { query = '@call.inner', desc = 'Select inside a call' },

            ['a/'] = { query = '@comment.outer', desc = 'Select around a comment' },
            ['i/'] = { query = '@comment.inner', desc = 'Select inside a comment' },
          },
        },
      },
    }
  end,
}
