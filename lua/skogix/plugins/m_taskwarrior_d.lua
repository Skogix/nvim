return {
  {
    dir = '~/skx/m_taskwarrior_d.nvim',
    checkbox_pattern = { lua = "([%-%*%+]) (%(([%sx~%>])%))", vim = "([\\-\\*\\+]) (\\(([\\sx~>])\\))" },
    config = function()
      -- Require
      require('m_taskwarrior_d').setup({
        checkbox_pattern = { lua = "([%-%*%+]) (%(([%sx~%>])%))", vim = "([\\-\\*\\+]) (\\(([\\sx~>])\\))" }

      })
      -- Optional
      vim.api.nvim_set_keymap('n', '<leader>te', '<cmd>TWEditTask<cr>',
        { desc = 'TaskWarrior Edit', noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>tv', '<cmd>TWView<cr>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>tu', '<cmd>TWUpdateCurrent<cr>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>ts', '<cmd>TWSyncTasks<cr>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<c-space>', '<cmd>TWToggle<cr>', { silent = true })
      -- Be caution: it may be slow to open large files, because it scan the whole buffer
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost' }, {
        group = vim.api.nvim_create_augroup('TWTask', { clear = true }),
        pattern = '*.norg', -- Pattern to match Markdown files
        callback = function()
          vim.cmd 'TWSyncTasks'
        end,
      }
      )
    end,
  },

  ------------------------------------------------------------------------------------------------------------
  -- -- 'skogix/m_taskwarrior_d.nvim',
  -- -- version = '*',
  -- -- branch = 'develop',
  -- dev = {
  --   ---@type string | fun(plugin: LazyPlugin): string directory where you store your local plugin projects
  --   path = "~/skx",
  --   ---@type string[] plugins that match these patterns will use your local versions instead of being fetched from GitHub
  --   patterns = { "skogix", "m_taskwarrior_d" }, -- For example {"folke"}
  --   fallback = false,                           -- Fallback to git when local plugin doesn't exist
  -- },
  -- dir = '/home/skogix/skx/m_taskwarrior_d.nvim',
  -- dependencies = { 'MunifTanjim/nui.nvim' },
  -- config = function()
  --   -- Require
  --   require('m_taskwarrior_d').setup()
  --   -- Optional
  --   vim.api.nvim_set_keymap('n', '<leader>te', '<cmd>TWEditTask<cr>',
  --     { desc = 'TaskWarrior Edit', noremap = true, silent = true })
  --   vim.api.nvim_set_keymap('n', '<leader>tv', '<cmd>TWView<cr>', { noremap = true, silent = true })
  --   vim.api.nvim_set_keymap('n', '<leader>tu', '<cmd>TWUpdateCurrent<cr>', { noremap = true, silent = true })
  --   vim.api.nvim_set_keymap('n', '<leader>ts', '<cmd>TWSyncTasks<cr>', { noremap = true, silent = true })
  --   vim.api.nvim_set_keymap('n', '<c-space>', '<cmd>TWToggle<cr>', { silent = true })
  --   -- Be caution: it may be slow to open large files, because it scan the whole buffer
  --   vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost' }, {
  --     group = vim.api.nvim_create_augroup('TWTask', { clear = true }),
  --     pattern = '*.md,*.markdown, *.neorg', -- Pattern to match Markdown files
  --     callback = function()
  --       vim.cmd 'TWSyncTasks'
  --     end,
  --   })
  -- end,
}
