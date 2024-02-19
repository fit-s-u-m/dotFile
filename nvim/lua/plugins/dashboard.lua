return {
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim'
    },
    config = function()
      -- require 'alpha'.setup(require 'alpha.themes.theta'.config)
      local status_ok, alpha = pcall(require, "alpha")
      if not status_ok then
        return
      end
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.header.val = {

        [[  ______AAAA____       ____AAAA________]],
        [[        VVVV               VVVV        ]],
        [[        (__)               (__)         ]],
        [[         \ \               / /           ]],
        [[          \ \   \\|||//   / /            ]],
        [[           > \   _   _   / <            ]],
        [[   hang      > \ / \ / \ / <             ]],
        [[    in        > \\_o_o_// <              ]],
        [[    there...   > ( (_) ) <               ]],
        [[               >|     |<                 ]],
        [[               / |\___/| \               ]],
        [[               / (_____) \               ]],
        [[               /         \               ]],
        [[                /   o   \                ]],
        [[                 ) ___ (                 ]],
        [[                / /   \ \                ]],
        [[               ( /     \ )               ]],
        [[               ><       ><               ]],
        [[              ///\     /\\\              ]],
        [[              '''       '''              ]],

      }

      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
        dashboard.button("t", "󰈞 Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", "  Configuration", ":Config <CR>"),
        dashboard.button("q", "󰩈  Quit Neovim", ":qa<CR>"),
      }

      local function footer()
        return "Don't Stop Until You are Proud..."
      end

      dashboard.section.footer.val = footer()

      dashboard.section.footer.opts.hl = "Type"
      dashboard.section.header.opts.hl = "Include"
      dashboard.section.buttons.opts.hl = "Keyword"

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end
  },
}

--[[  ______AAAA____       ____AAAA________]]
--[[        VVVV               VVVV        ]]
--[[       (__)               (__)         ]]
-- [[      \ \               / /           ]]
-- [[       \ \   \\|||//   / /            ]]
-- [[         > \   _   _   / <            ]]
--[[ hang      > \ / \ / \ / <             ]]
--[[  in        > \\_o_o_// <              ]]
--[[  there...   > ( (_) ) <               ]]
--[[             >|     |<                 ]]
--[[             / |\___/| \               ]]
--[[             / (_____) \               ]]
--[[             /         \               ]]
--[[              /   o   \                ]]
--[[               ) ___ (                 ]]
--[[              / /   \ \                ]]
--[[             ( /     \ )               ]]
--[[             ><       ><               ]]
--[[            ///\     /\\\              ]]
--[[            '''       '''              ]]
--
--
--
-- O---o
--  O-o
--   O
--  o-O
-- o---O
-- O---o
--  O-o
--   O
--  o-O
-- o---O
-- O---o
--  O-o
--   O
--  o-O
-- o---O
-- DNA ASCII Art
--
--              .--.            .--.
--             ( (`\\."--``--".//`) )
--              '-.   __   __    .-'
--               /   /__\ /__\   \
--              |    \ 0/ \ 0/    |
--              \     `/   \`     /
--               `-.  /-"""-\  .-`           ._-.
--                 /  '.___.'  \            //';\\
--                 \     I     /           //  ;//
--                  `;--'`'--;`            \\_;//
--                    '.___.'               //-`
--                   ___| |___           ."`-.
--                .-`  .---.  `-.       /     )
--               /   .'     '.   \     /      )
--              /  /||       ||\  \   /  /`""`
--             /  / ||       || \  \ /  /
--            /  /  ||       ||  \  /  /
--           /  (___||___.-=--.   \   /
--          (                -;    '-'
--           `-----------.___~;
--                  ||       ||
--                  ||       ||
--                  ||       ||
--                  ||       ||
--                  ||       ||
--                  |'.     .'|
--                  ;  `'--`  (
-- (`-.            /           \
--  '-.`\         /  ,  .-'"`\  \
--     \ \       / /^|  |     \  \
--      | |     / /  |  |      \  \
--      | |    / /   |  |       \  \
--      | |   | |    |  |       /  /
--       \ \  | |    |  |     /` /`
--        \ \ | |    |  |   /` /`
--        | | \ \    |  | /` /`
--        | |  \ \   |  /` /`
--        | |   | |  |/` /`
--        \ \   / /_/` /|
--         \ `-` /`    ||
--          '--'`|     ||
--               |     \'--------.
--          jgs  |  \ \ \     \ \ \
--                \__\_\_\----'-'-'
--                Art by Joan Stark
--          Pink Panther ASCII Art
--
