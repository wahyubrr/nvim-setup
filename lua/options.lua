require "nvchad.options"
require("base46").toggle_transparency()

-- add yours here!

local o = vim.o
o.cursorlineopt = 'both' -- to enable cursorline!

-- relative numbers
local opt = vim.opt
opt.relativenumber = true

-- open file tree on startup
-- vim.cmd("NvimTreeOpen")

-- set scrolloff
opt.scrolloff = 8

-- set wrap
opt.wrap = false

-- tab settings
opt.tabstop = 2
opt.shiftwidth = 2
-- use tabs instead of spaces for indentation
opt.expandtab = false

-- set blank last line when saving
opt.fixeol = true
-- opt.eol = true

opt.updatetime = 50

-- set background to transparent
-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

-- set autoformatting on save
vim.cmd [[ autocmd BufWritePre * lua vim.lsp.buf.format() ]]
