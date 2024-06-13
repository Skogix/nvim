
require 'plugins/options'
require 'plugins/keymaps'
require 'plugins/autocommands'
require 'plugins/package-manager'
--require('lazy').setup({
  -- {'neovim/nvim-lspconfig'},
  
require("lazy").setup({
    { "folke/which-key.nvim", lazy = true },
  require 'plugins/neoconf',
  require 'plugins/lspconfig',
  require 'plugins/colorscheme',
  require 'plugins/treesitter',
  require 'plugins/vim-startuptime',
    { "nvim-tree/nvim-web-devicons", lazy = true },
  require 'plugins/lazydev',
  --require 'plugins/',
  require 'plugins/cmp',
  -- require 'telescope',
  require 'plugins/neo-tree',
}, {})
-- { "stevearc/dressing.nvim", event = "VeryLazy" },
-- {
  --   "Wansmer/treesj",
  --   keys = {
  --     { "J", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
  --   },
  --   opts = { use_default_keymaps = false, max_join_length = 150 },
  -- },
  --
  -- {
  --   "monaqa/dial.nvim",
  --   -- lazy-load on keys
  --   -- mode is `n` by default. For more advanced options, check the section on key mappings
  --   keys = { "<C-a>", { "<C-x>", mode = "n" } },
  -- },
  --
  -- -- local plugins need to be explicitly configured with dir
  -- { dir = "~/projects/secret.nvim" },
  --
  -- -- you can use a custom url to fetch a plugin
  -- { url = "git@github.com:folke/noice.nvim.git" },
  --
  -- -- local plugins can also be configured with the dev option.
  -- -- This will use {config.dev.path}/noice.nvim/ instead of fetching it from GitHub
  -- -- With the dev option, you can easily switch between the local and installed version of a plugin
  -- { "folke/noice.nvim", dev = true },
