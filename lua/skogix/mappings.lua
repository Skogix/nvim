-- HARPOON {{{
local harpoon = require 'harpoon'
-- }}}
-- TELESCOPE {{{
local telescope = require 'telescope.builtin'

-- Slightly advanced example of overriding default behavior and theme
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to Telescope to change the theme, layout, etc.
  telescope.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = 'search in current buffer' })

-- It's also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
vim.keymap.set('n', '<leader>s/', function()
  telescope.live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = 'search in open files' })

-- Shortcut for searching your Neovim configuration files
vim.keymap.set('n', '<leader>sn', function()
  telescope.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'search neovim config' })
-- }}}
-- WHICHKEY {{{
return {
  ['<leader>'] = { telescope.git_files, 'search git files' },
  b = { name = 'buffer' },
  c = { name = 'code' },
  e = { '<cmd>Neotree toggle<cr>', 'neotree' },
  h = {
    name = 'harpoon',
    h = {
      function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      'harpoon quick menu',
    },
    n = {
      function()
        harpoon:list():add()
      end,
      'harpoon add file',
    },
    a = {
      function()
        harpoon:list():select(1)
      end,
      'harpoon file 1',
    },
    o = {
      function()
        harpoon:list():select(2)
      end,
      'harpoon file 2',
    },
    e = {
      function()
        harpoon:list():select(3)
      end,
      'harpoon file 3',
    },
    u = {
      function()
        harpoon:list():select(4)
      end,
      'harpoon file 4',
    },

    -- vim.keymap.set('n', '<S-t>', function()
    --   harpoon:list():select(2)
    -- end)
    -- vim.keymap.set('n', '<S-n>', function()
    --   harpoon:list():select(3)
    -- end)
    -- vim.keymap.set('n', '<S-s>', function()
    --   harpoon:list():select(4)
    -- end)
    -- h = { harpoon.ui:toggle_quick_menu(harpoon:list()), 'harpoon quick menu' },
  },
  s = {
    name = 'search',
    -- vim.keymap.set('n', '<leader>ss', builtin.live_grep, { desc = 'search with grep' })
    s = { telescope.live_grep, 'search with grep' },
    -- vim.keymap.set('n', '<leader>sh', telescope.help_tags, { desc = 'search help' })
    h = { telescope.help_tags, 'search help' },
    -- vim.keymap.set('n', '<leader>sk', telescope.keymaps, { desc = 'search keymaps' })
    -- vim.keymap.set('n', '<leader>sf', telescope.find_files, { desc = 'search files' })
    -- vim.keymap.set('n', '<leader>st', telescope.builtin, { desc = 'search telescope builtin' })
    -- vim.keymap.set('n', '<leader>sw', telescope.grep_string, { desc = 'search current word' })
    -- -- vim.keymap.set('n', '<leader>ss', builtin.live_grep, { desc = 'search with grep' })
    -- vim.keymap.set('n', '<leader>sd', telescope.diagnostics, { desc = 'search diagnostics' })
    -- vim.keymap.set('n', '<leader>sb', telescope.buffers, { desc = 'search buffers' })
    -- -- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
    -- vim.keymap.set('n', '<leader>s.', telescope.oldfiles, { desc = 'search recent files("." for repeat)' })
    -- vim.keymap.set('n', '<leader><leader>', telescope.git_files, { desc = 'search git files' })
    -- -- vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'search git files' })
  },
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
-- }}}
