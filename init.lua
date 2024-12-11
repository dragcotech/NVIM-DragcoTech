vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- config basic
require "core"
require("core.keymaps")

-- config plugin
require "plugins"
require("plugins.configs.lualine")
require("plugins.configs.completions")
require("plugins.configs.mason")
require("plugins.configs.lsp")
require("plugins.configs.gitsigns")
require("plugins.configs.oil")
require("plugins.configs.nvimtree")
require("plugins.configs.telescope")


