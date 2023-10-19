-- Make sure Lazy.nvim is installed and added to the runtime path
local lazypath = "/Users/n3m0/.config/nvim/lazy/lazy.nvim"
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
-- /Make sure Lazy.nvim is installed and added to the runtime path

require("plugins")

-- Load config files
local conf_files = {
	"global.lua",
	"plugins.lua",
	"global.vim"
}

local plugin_conf_files = {
	
}

-- source all the config files
for _, name in ipairs(conf_files) do
	local path = string.format("%s/conf/%s", "/Users/n3m0/.config/nvim", name)
	local source_cmd = "source " .. path
	vim.cmd(source_cmd)
end
-- /source all the config files

-- source all plugin config files(most of the configs are managed by Lazy.nvim)
for _, name in ipairs(plugin_conf_files) do
	local path = string.format("%s/conf/plugins/%s", "/Users/n3m0/.config/nvim", name)
	local source_cmd = "source " .. path
	vim.cmd(source_cmd)
end
-- /source all plugin config files
-- /Load config files

-- Load colortheme
require('onedark').setup {
    style = 'warmer'
}
require('onedark').load()
-- /Load colortheme

vim.cmd [[set termguicolors]]

