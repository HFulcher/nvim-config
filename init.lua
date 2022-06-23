require('impatient')
require "huw.options"
require "huw.keymapping"
require "huw.plugins"
require "huw.impatient"

vim.cmd('syntax enable')
vim.cmd('colorscheme dracula')

vim.g.coc_snippet_next = '<c-j>'
vim.g.coc_snippet_prev = '<c-k>'
vim.NERDTreeShowHidden = 1

vim.api.nvim_command([[command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')]])

vim.api.nvim_command([[
    augroup auto_commands
    autocmd BufWrite *.py call CocAction('format')
    augroup END
]])

local dracula_theme = {
    bg = "#282a36",
    fg = "#f8f8f2",
    cyan = "#8be9fd",
    green = "#50fa7b",
    orange = "#ffb86c",
    pink = "#ff79c6",
    purple = "#bd93f9",
    red = "#ff5555",
    yellow = "#f1fa8c"
}

require("flutter-tools").setup{}
require('feline').setup()
require('feline').use_theme(dracula_theme)
