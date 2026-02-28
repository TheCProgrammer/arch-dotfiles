syntax = on
vim.o.number = true

vim.opt.clipboard = "unnamedplus"	-- copy to the system clipboard (globally)
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered


-- lazy.nvim plugin manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system ({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })

end
vim.opt.rtp:prepend(lazypath)

require("installplugins")

local colorscheme = "monokai_pro"

pcall(vim.cmd, "colorscheme " .. colorscheme) -- I will just do this without checking because I am sure that the color scheme will be installed

require("loadplugins")
