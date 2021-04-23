--| @globals.lua |--

--[[
--
-- 'O' here is a global object that is
-- used to access settings globally
-- from nvim/settings.lua
--
--]]

O = {
  auto_complete = true,
  hide_buffers = false,
  line_numbers = true,
  relative_line_numbers = true,
  colorscheme = 'lunar',

   treesitter = {
        ensure_installed = 'all',
        highlight = {enabled = true},
   },
}
