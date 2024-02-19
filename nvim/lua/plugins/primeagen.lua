return {

  -- {{{ Define the Harpoon lazy.vim specificaiton.

  "ThePrimeagen/harpoon",
  enabled = true,
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Define events to load Harpoon.

  keys = function()
    local harpoon = require("harpoon")
    local conf = require("telescope.config").values

    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end
      require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
          results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      }):find()
    end


    return {
      -- Harpoon marked files 1 through 4
      { "<a-1>", function() harpoon:list():select(1) end,                     desc = "Harpoon buffer 1" },
      { "<a-2>", function() harpoon:list():select(2) end,                     desc = "Harpoon buffer 2" },
      { "<a-3>", function() harpoon:list():select(3) end,                     desc = "Harpoon buffer 3" },
      { "<a-4>", function() harpoon:list():select(4) end,                     desc = "Harpoon buffer 4" },

      -- Harpoon next and previous.
      { "<a-j>", function() harpoon:list():next() end,                        desc = "Harpoon next buffer" },
      { "<a-k>", function() harpoon:list():prev() end,                        desc = "Harpoon prev buffer" },

      -- Harpoon user interface.
      { "<a-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Harpoon Toggle Menu" },
      { "<a-a>", function() harpoon:list():append() end,                      desc = "Harpoon add file" },

      -- Use Telescope as Harpoon user interface.
      { "<a-t>", function() toggle_telescope(harpoon:list()) end,             desc = "Open Harpoon window" },
    }
  end,

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Use Harpoon defaults or my customizations.

  opts = function(_, opts)
    opts.settings = {
      save_on_toggle = false,
      sync_on_ui_close = false,
      save_on_change = true,
      enter_on_sendcmd = false,
      tmux_autoclose_windows = false,
      excluded_filetypes = { "harpoon", "alpha", "dashboard", "gitcommit" },
      mark_branch = false,
      key = function()
        return vim.loop.cwd()
      end
    }
  end,

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Configure Harpoon.

  config = function(_, opts)
    require("harpoon").setup(opts)
  end,

  -- ----------------------------------------------------------------------- }}}
}





-- keys = function()
--   local mark = require("harpoon" .. ".mark")
--   local ui = require("harpoon" .. ".ui")
--   return {
--     { "<leader>h", function() ui.toggle_quick_menu() end, desc = "harpoon quick menu" },
--     { "leader>a",  function() mark.add.file() end,        desc = "add file to harpoon" },
--
--     { "<leader>1", function() ui.nav_file(1) end,         desc = "harpoon to file 1" },
--     { "<leader>2", function() ui.nav_file(2) end,         desc = "harpoon to file 2" },
--     { "<leader>3", function() ui.nav_file(3) end,         desc = "harpoon to file 3" },
--     { "<leader>4", function() ui.nav_file(4) end,         desc = "harpoon to file 4" },
--
--     { "<leader>j", function() ui.nav_next() end,          desc = "harpoon next" },
--     { "<leader>k", function() ui.nav_prev() end,          desc = "harpoon prev" },
--   }
-- end
-- {
--   "theprimeagen/harpoon",
--   branch = "harpoon2",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-telescope/telescope.nvim"
--   },
--   config = function()
--     require("harpoon"):setup()
--   end,
--
--   keys =
--   {
--     { "<a-a>", function() require("harpoon"):list():append() end,  desc = "harpoon file", },
--     {
--       "<a-h>",
--       function()
--         local harpoon = require("harpoon")
--         harpoon.ui:toggle_quick_menu(harpoon:list())
--       end,
--       desc = "harpoon quick menu",
--     },
--     { "<a-1>", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
--     { "<a-2>", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
--     { "<a-3>", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
--     { "<a-4>", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
--     { "<a-5>", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
--
--     { "<a-j>", function() require("harpoon"):list():next() end,    desc = "harpoon next", },
--     { "<a-k>", function() require("harpoon"):list():prev() end,    desc = "harpoon prev", },
--   },
--
-- }
