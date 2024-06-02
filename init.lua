--[[
-- TODO:
 - [ ] :help
 - [ ] :help modeline
 - [ ] :checkhealth
  - luarocks
  - npm
  - perl
  - ruby
  - python
 - [ ] xclip
 - [ ] fix todo-manager/todo workflow
 - [ ] markdown
 - [ ] nvim-orgmode
 - [ ] neo-tree '-' -> ../
 - [ ] keybinds
  - WARNING conflicting keymap exists for mode **"n"**, lhs: **"gb"**
  - rhs: `<Plug>(comment_toggle_blockwise)`
  - WARNING conflicting keymap exists for mode **"n"**, lhs: **"gc"**
  - rhs: `<Plug>(comment_toggle_linewise)`
  - WARNING conflicting keymap exists for mode **"n"**, lhs: **"sF"**
  - rhs: ` `
  - WARNING conflicting keymap exists for mode **"n"**, lhs: **"sd"**
  - rhs: ` `
  - WARNING conflicting keymap exists for mode **"n"**, lhs: **"sh"**
  - rhs: ` `
  - WARNING conflicting keymap exists for mode **"n"**, lhs: **"sf"**
  - rhs: ` `
  - WARNING conflicting keymap exists for mode **"n"**, lhs: **"sr"**
  - rhs: ` `
 - [ ] dmenu / vad den nu hette
 - [ ] https://sw.kovidgoyal.net/kitty/overview/

https://github.com/knubie/vim-kitty-navigator
https://github.com/folke/trouble.nvim
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
<<<<<<< HEAD
-- vim.keymap.set({ 'n', 'v' }, '<leader>D', '"+D') -- delete line
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
||||||| e13e647
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
=======
>>>>>>> feature/cleanup
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
