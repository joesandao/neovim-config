vim.cmd.packadd "packer.nvim"
local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packerがインストールされてねえぞ")
  return
end

vim.cmd[[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'github/copilot.vim'
end)
