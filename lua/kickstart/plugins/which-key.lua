return {
  'folke/which-key.nvim',
  keys = { '<leader>' },
  config = function()
    local which_key = require 'which-key'

    which_key.setup {
      plugins = {
        spelling = {
          enabled = true,
          suggestions = 20,
        },
      },
      presets = {
        operators = true,
      },
      window = {
        border = 'shadow',
        position = 'bottom',
        margin = { 0, 1, 1, 5 },
        padding = { 1, 2, 1, 2 },
      },
      triggers_nowait = {
        '`',
        "'",
        'g`',
        "g'",
        '"',
        '<c-r>',
        'z=',
      },
    }

    local opts = {
      prefix = '<leader>',
    }

    local binds = {
      b = { name = 'buffer' },
      c = { name = 'code' },
      e = { '<cmd>Neotree toggle<cr>', 'neotree' },
      s = { name = 'search' },
      r = { name = 'refactor' },
      l = { name = 'lsp' },
      d = { name = 'debug' },
      t = { '<cmd>ToggleTerm direction=float<cr>', 'ToggleTerm' },
      ['T'] = { name = 'toggle' },
      m = { name = 'macro/markdown' },
      n = { name = 'notifications' },
      ['<tab>'] = { name = 'tabs' },
      [';'] = { name = 'test' },
      ["'"] = { name = 'marks' },
      ['/'] = { name = 'search' },
      ['/g'] = { name = 'git' },
      ['/gd'] = { name = 'diff' },
      ['['] = { name = 'previous' },
      [']'] = { name = 'next' },
      g = {
        name = 'git',
        l = { '<cmd>LazyGit<cr>', 'LazyGit' },
        f = { '<cmd>Telescope find_files<cr>', 'Find File' }, -- create a binding with label
      },
      f = {
        name = 'file', -- optional group name
        f = { '<cmd>Telescope find_files<cr>', 'Find File' }, -- create a binding with label
        --     r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File', noremap = false, buffer = 123 }, -- additional options for creating the keymap
        --     n = { 'New File' }, -- just a label. don't create any mapping
        --     e = 'Edit File', -- same as above
        --     ['1'] = 'which_key_ignore', -- special label to hide it in the popup
        --     b = {
        --       function()
        --         print 'bar'
        --       end,
        --       'Foobar',
        --     }, -- you can also pass functions!
      },
    }

    which_key.register(binds, opts)
  end,
}
-- vim: ts=2 sts=2 sw=2 et
