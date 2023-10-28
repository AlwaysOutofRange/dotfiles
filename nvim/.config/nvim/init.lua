--- Enabled vim.loader()
vim.loader.enable()

require("options")
require("mappings")
-- require("commands")

--- Bootstrap plugins & lazy.nvim (Package Manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

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
require("lazy").setup("plugins", require("configs.lazy"))

require("plugins")
vim.cmd("colorscheme kanagawa")
