local is_vscode = vim.g.vscode == 1
local key = vim.keymap.set

-- if is_vscode then
--   key('n', '<Space>c', ":call VSCodeNotify('workbench.action.closeOtherEditors')<CR>")
-- else
--   key('n', '<Space>c', ":BufferCloseAllButVisible<CR>")
-- end

vim.opt.ignorecase = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.cindent = true
vim.opt.expandtab = false
vim.opt.filetype = 'plugin', 'indent', 'on'
vim.opt.mouse = ''
vim.opt.fixeol = false
vim.opt.fixendofline = false

-- hit tab key insert indent
key('n', '<Tab>', '>>', { silent = true, noremap = true })
key('n', '<S-Tab>', '<<', { silent = true, noremap = true })

--  multi lines indent in visual mode
key('v', '<Tab>', '>gv', { silent = true, noremap = true })
key('v', '<S-Tab>', '<gv', { silent = true, noremap = true })

-- select and insert
key('n', 'vv', 'V', { silent = true, noremap = true })
key('n', 'va', '<ESC>ggVG', { silent = true, noremap = true })
key('n', '<C-a>', '<ESC>ggVG', { silent = true, noremap = true })
key('n', ',', 'i<CR><ESC>', { silent = true, noremap = true })
key('n', '.', 'o<ESC>', { silent = true, noremap = true })

-- cancel short charactors yank
key('n', 'x', '"_x', { noremap = true })
key('n', 's', '"_s', { noremap = true })
key('n', 'c', '"_c', { noremap = true })
key('n', 'd', '"_d', { noremap = true })

-- clear highlight
key('n', '<ESC>', '<Cmd>nohl<CR>', { noremap = true })

-- useful comment out
key('n', 'gc', '<Plug>VSCodeCommentary', {})
key('x', 'gc', '<Plug>VSCodeCommentary', {})
key('o', 'gc', '<Plug>VSCodeCommentary', {})

