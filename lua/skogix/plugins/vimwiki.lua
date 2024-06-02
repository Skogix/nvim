return {
  'vimwiki/vimwiki',
  branch = 'dev',
  event = 'BufEnter *.md',
  init = function()
    vim.g.vimwiki_list = {
      {
        path = '~/org/',
        syntax = 'markdown',
        ext = '.md',
      },
    }
    vim.g.vimwiki_ext2syntax = {}
  end,
}
