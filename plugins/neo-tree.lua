return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, config)
    config.window.width = 42 -- Meaning of everything :)
    config.filesystem.filtered_items = {
      visible = true -- Show hidden files by default
    }
    return config
  end,
}
