vim.opt.smartcase = true
vim.opt.relativenumber = true

-- vscode format i.e json files
vim.g.vscode_snippets_path = "/Users/will/Library/Application Support/Code/User/snippets"

-- snipmate format 
vim.g.snipmate_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snipmate"

-- lua format 
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/lua_snippets"
