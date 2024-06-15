

require 'plugins/options'
require 'plugins/keymaps'
require 'plugins/autocommands'
require 'plugins/package-manager'
--require("lazy").setup({
  --require 'plugins/lspconfig',
  --require 'plugins/neorg',
  --require 'plugins/treesitter',
  --require 'plugins/neodev',
  -- require 'plugins/neoconf',
  --{ "folke/which-key.nvim", lazy = true },
  --require 'plugins/colorscheme',
  --require 'plugins/vim-startuptime',
  --  { "nvim-tree/nvim-web-devicons", lazy = true },
  ---- require 'plugins/lazydev',
  ----require 'plugins/',
  --require 'plugins/cmp',
  --require 'plugins/telescope',
  --require 'plugins/neo-tree',
  ----require 'plugins/rocks',
  --require 'plugins/neorg',
--}, {})

--require'lspconfig'.lua_ls.setup {
--  on_init = function(client)
--    local path = client.workspace_folders[1].name
--    if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
--      return
--    end
--
--    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
--      runtime = {
--        -- Tell the language server which version of Lua you're using
--        -- (most likely LuaJIT in the case of Neovim)
--        version = 'LuaJIT'
--      },
--      -- Make the server aware of Neovim runtime files
--      workspace = {
--        checkThirdParty = false,
--        library = {
--          vim.env.VIMRUNTIME
--          -- Depending on the usage, you might want to add additional paths here.
--          -- "${3rd}/luv/library"
--          -- "${3rd}/busted/library",
--        }
--        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
--        -- library = vim.api.nvim_get_runtime_file("", true)
--      }
--    })
--  end,
--  settings = {
--    Lua = {}
--  }
--}
---- dotnet
---- luarocks luaformatter
---- nginx-python3
