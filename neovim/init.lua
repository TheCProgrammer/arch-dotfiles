syntax = on
vim.o.number = true


vim.opt.clipboard = "unnamedplus"	-- copy to the system clipboard (globally)
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
expandtab = true -- indent with spaces instead of tabs

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
