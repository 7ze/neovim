--| @options.lua |--

local o = vim.o
local b = vim.bo
local w = vim.wo
local cmd = vim.cmd


cmd [[ filetype plugin indent on ]]
cmd [[ set iskeyword+=- ]]     -- treats dash seperated words as a word


-- global options

o.hidden = O.hide_buffers
o.ignorecase = true
o.scrolloff = 20
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
o.t_Co = '256'               -- support 256 colors
o.showmode = false           -- disable the mode being shown
o.backup = false
o.writebackup = false

-- buffer-local options

b.expandtab = true           -- converts tabs to spaces
b.shiftwidth = 2
b.smartindent = false
b.tabstop = 2


-- window-local options

w.number = O.line_numbers    			-- set line numbers
w.relativenumber = O.relative_line_numbers 	-- relative line numbers
w.numberwidth = 2
