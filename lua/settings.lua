--| @settings.lua |--

local o = vim.o
local b = vim.bo
local w = vim.wo
local cmd = vim.cmd

local indent = 2

cmd [[syntax enable]]
cmd [[filetype plugin indent on]]
cmd [[set iskeyword+=-]]     -- treats dash seperated words as a word


-- global options

o.hidden = true
o.ignorecase = true
o.scrolloff = 4
o.pumheight = 10             -- makes popup menu smaller
o.cmdheight = 2              -- more space for messages
o.fileencoding = 'utf-8'
o.splitbelow = true          -- always splits below
o.splitright = true          -- alwauys splits to the right
o.mouse = 'a'                -- enables mouse
o.showtabline = 2            -- show buffers
o.timeoutlen = 100
o.updatetime = 300
o.clipboard = 'unnamedplus'  -- copy paste between vim and everything else
o.termguicolors = true       -- set term gui colors
o.t_Co = '256'               -- support 256 colors
o.showmode = false           -- disable the mode being shown


-- buffer-local options

b.expandtab = true           -- converts tabs to spaces
b.shiftwidth = indent
b.smartindent = true
b.tabstop = indent


-- window-local options

w.number = false             -- set line numbers
w.relativenumber = false     -- relative line numbers
