return {
  'foo/bar.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    {
      '4O4/reactivex', -- LuaRocks dependency
      build = function(plugin)
        -- post-install build step required to link the luarocks dependency
        vim.uv.fs_symlink(plugin.dir, plugin.dir .. "/lua", { dir = true })
      end,
    },
  },
  build = "make install" -- Post-install build step of the main plugin
}
