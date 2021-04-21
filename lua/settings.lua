--| @settings.lua |--

local o = vim.o
local b = vim.bo
local w = vim.wo
local cmd = vim.cmd

local indent = 2

cmd [[syntax enable]]
cmd [[filetype plugin indent on]]
cmd [[set iskeyword+=-]] 		-- treats dash seperated words as a word


-- global options

o.hidden = true
o.ignorecase = true
o.scrolloff = 4
o.mouse = 'a'


-- buffer-local options

b.expandtab = true
b.shiftwidth = indent
b.smartindent = true
b.tabstop = indent


-- window-local options

w.number = O.line_numbers
w.relativenumber = O.relative_line_numbers
