require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline
o.fixeol = false
o.smartindent = true
o.autoindent = false
o.shiftwidth = 4
o.clipboard = "unnamedplus"

local g = vim.g
g.strip_whitespace_on_save = 1
