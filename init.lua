

require 'options'
require 'keymaps'
require 'autocommands'
require 'package-manager'
require('lazy').setup({
  -- {'neovim/nvim-lspconfig'},
  require 'skogix/lspconfig',
  require 'skogix/colorscheme',
  require 'skogix/treesitter',
  require 'skogix/plugins/cmp',
  require 'skogix/plugins/telescope',

  -- require 'skogix/plugins/neo-tree',
}, {})
  -- { import = 'skogix.plugins' }
-- require 'plugins'
-- [[ skogix mappings ]]
-- require 'skogix.mappings2'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
