
require 'plugins/options'
require 'plugins/keymaps'
require 'plugins/autocommands'
require 'plugins/package-manager'
require("lazy").setup({
  require 'plugins/neoconf',
  { "folke/which-key.nvim", lazy = true },
  require 'plugins/lspconfig',
  require 'plugins/colorscheme',
  require 'plugins/treesitter',
  require 'plugins/vim-startuptime',
    { "nvim-tree/nvim-web-devicons", lazy = true },
  require 'plugins/lazydev',
  --require 'plugins/',
  require 'plugins/cmp',
  require 'plugins/telescope',
  require 'plugins/neo-tree',
}, {})

-- dotnet
-- luarocks luaformatter
-- nginx-python3
