return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim', -- optional
  },
  opts = {
    server = {
      settings = {
        includeLanguages = {
          ruby = 'html',
        },
        experimental = {
          classRegex = {
            [[class= "([^"]*)"]],
            [[class: "([^"]*)"]],
            [[class= '([^']*)']],
            [[class: '([^']*)']],
            [[cn\(\s*"([^"]*)"\s*(?:,\s*([^)]*))?\s*\)]],
          },
        },
      },
    },
    extension = {
      queries = { 'ruby' },
      patterns = {
        ruby = {
          'class:%s*"([^"]+)"', -- Matches class: "tailwind classes"
          'cn%("([^"]+)"', -- Matches cn("tailwind classes")
        },
      },
    },
  },
}
