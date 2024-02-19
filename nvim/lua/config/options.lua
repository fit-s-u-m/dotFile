vim.mouse = ""
-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])





-- if vim.fn.has("wsl") then
--   vim.g.clipboard = {
--     name = "clip.exe (Copy Only)",
--     copy = {
--       ["+"] = "clip.exe",
--       ["*"] = "clip.exe"
--     },
--     paste = {
--       ["+"] = "clip.exe",
--       ["*"] = "clip.exe"
--     },
--     cache_enabled = true
--   }
-- end
--
--
-- -- if vim.fn.has("wsl") == 1 then
-- --     if vim.fn.executable("wl-copy") == 0 then
-- --         print("wl-clipboard not found, clipboard integration won't work")
-- --     else
-- --         vim.g.clipboard = {
-- --             name = "wl-clipboard (wsl)",
-- --             copy = {
-- --                 ["+"] = 'wl-copy --foreground --type text/plain',
-- --                 ["*"] = 'wl-copy --foreground --primary --type text/plain',
-- --             },
-- --             paste = {
-- --                 ["+"] = (function()
-- --                     return vim.fn.systemlist('wl-paste --no-newline|sed -e "s/\r$//"', { '' }, 1) -- '1' keeps empty lines
-- --                 end),
-- --                 ["*"] = (function()
-- --                     return vim.fn.systemlist('wl-paste --primary --no-newline|sed -e "s/\r$//"', { '' }, 1)
-- --                 end),
-- --             },
-- --             cache_enabled = true
-- --         }
-- --     end
-- -- end
