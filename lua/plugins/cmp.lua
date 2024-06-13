-- TODO: https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps

---@module "nvim-cmp"
return  {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'petertriho/cmp-git',
    { 'saadparwaiz1/cmp_luasnip' },
    {'L3MON4D3/LuaSnip',
    build = (function()
      -- Build Step is needed for regex support in snippets.
      -- This step is not supported in many windows environments.
      -- Remove the below condition to re-enable on windows.
      if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
        return
      end
      return 'make install_jsregexp'
    end)(),
    dependencies = {
    --   -- `friendly-snippets` contains a variety of premade snippets.
    --   --    See the README about individual language/framework/plugin snippets:
    --   --    https://github.com/rafamadriz/friendly-snippets
      {
        'rafamadriz/friendly-snippets',
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load()
        end,
      },
    },
    },
  },
  config = function()
    local cmp = require('cmp')
      local luasnip = require 'luasnip'
    luasnip.config.setup {}

    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'git' },
      }, {
          { name = 'buffer' },
        })
    })
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })
    require("cmp_git").setup()

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      completion = { completeopt = 'menu,menuone,noinsert' },
      mapping = {
        ['<CR>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            if luasnip.expandable() then
              luasnip.expand()
            else
              cmp.confirm({
                select = true,
              })
            end
          else
            fallback()
          end
        end),

        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.locally_jumpable(1) then
            luasnip.jump(1)
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        -- ['<Tab>'] = cmp.mapping.select_next_item(),
        -- ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<C-Space>'] = cmp.mapping.complete {},
        ['<C-l>'] = cmp.mapping(function()
          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          end
        end, { 'i', 's' }),
        ['<C-h>'] = cmp.mapping(function()
          if luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          end
        end, { 'i', 's' }),
      },
      sources = cmp.config.sources({
        {name = 'lazydev'},
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp' },
        { name = 'luasnip', option = { use_show_condition = false   , { show_autosnippets = true } } },
        {name = 'path'},
        {name = 'cmdline'},
        { name = 'buffer' },
        {name = 'cmp_git' },

      })
    })


    local capabilities = require('cmp_nvim_lsp').default_capabilities() --nvim-cmp

    local on_attach = function(client, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
    end

    -- Setup lspconfig.
    local nvim_lsp = require('lspconfig')

      -- Set up lspconfig.
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['lua_ls'].setup {
    capabilities = capabilities
  }

    -- setup languages 
    -- GoLang
    nvim_lsp['gopls'].setup{
      cmd = {'gopls'},
      -- on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        gopls = {
          experimentalPostfixCompletions = true,
          analyses = {
            unusedparams = true,
            shadow = true,
          },
          staticcheck = true,
        },
      },
      init_options = {
        usePlaceholders = true,
      }
    }
  end,
}
