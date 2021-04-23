--| @settings.lua |--

--[[
--
-- The rationale behind having a global settings
-- being an easily accessible settngs without
-- messing around the internal settings, providing
-- a layer of abstraction
--
--]]

-- O is the global object
O.auto_complete = true
O.colorscheme = 'onedark'
O.line_numbers = true
O.relative_line_numbers = true
O.treesitter.ensure_installed = 'all'
O.treesitter.highlight = true
