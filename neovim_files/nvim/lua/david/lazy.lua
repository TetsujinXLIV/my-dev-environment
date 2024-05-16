-- shows absolute line number on cursor line (when relative number is on)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- latest stable release
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("david.plugins")