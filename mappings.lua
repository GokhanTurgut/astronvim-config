-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- refresh buffers after a git branch change
    ["<leader>br"] = { ":e<cr>", desc = "Refresh buffers" },
    -- reset changes to the last save
    ["<leader>bR"] = { ":edit!<cr>", desc = "Reset changes" },
    -- preview markdown files on the browser
    ["<leader>lm"] = { ":MarkdownPreview<cr>", desc = "Markdown preview" },
    -- after half page navigation center the screen
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    -- the previous plugin is deprecated, this will be replaced by a new plugin
    -- ["<leader>lt"] = { desc = "TypeScript" },
    -- ["<leader>lto"] = { ":TypescriptOrganizeImports<cr>", desc = "Organize imports" },
    -- ["<leader>lta"] = { ":TypescriptAddMissingImports<cr>", desc = "Add imports" },
    -- yank the file path
    ["<leader>y"] = { ":let @+ = expand('%:.')<cr>", desc = "Yank relative path" },
    -- open copilot panel
    ["<leader>lc"] = { ":Copilot panel<cr>", desc = "Copilot panel" },
    -- telescope grep with args
    ["<leader>fw"] = { ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Find words with args" }
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
