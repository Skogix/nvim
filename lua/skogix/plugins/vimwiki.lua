return {
  'vimwiki/vimwiki',
  branch = 'dev',
  -- keys = { "<leader>x" },
  config = function()
    print 'Setting up vimwiki!'
    vim.g.vimwiki_list = {
      {
        template_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/vimwiki/autoload/',
        syntax = 'markdown',
        ext = '.md',
        path = '~/docs/personalwiki', -- does not work?=!?!?
      },
    }
    vim.g.vimwiki_global_ext = 0
  end,
}
