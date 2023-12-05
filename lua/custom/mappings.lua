local api = vim.api
-- local ng = require("ng")
-- local ng_opts = { silent = true, noremap = true }

local M = {}

M.general = {
  n = {
    ["<C-p>"] = { ":", "enter command mode", opts = { nowait = true } },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<C-d>"] = { "<C-d>zz", "Page down and re-center" },
    ["<C-u>"] = { "<C-u>zz", "Page up and re-center" },
    -- ["<C-p>"] = { "xi<cr><esc>f,l", "Do an echo", opts = { nowait = true } },
    -- Yank the path of the current buffer file into the clipboard
    ["<leader>yp"] = { function() vim.cmd("let @+ = expand('%:p')") end, "Yank path of current buffer" },
    ["<leader>yt"] = { function() vim.cmd("let @+ = expand('%:t')") end, "Yank name of current buffer" },
    ["<leader>yd"] = { function() vim.cmd("let @+ = expand('%:p:h')") end, "Yank directory of current buffer" },

    -- LSP Mappings 
    -- ["<leader>ca"] = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    -- ["<leader>cd"] = { "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>", "Show Line Diagnostics" },
    -- ["<leader>cc"] = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Go to previous diagnostic" },
    -- ["<leader>cn"] = { "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "Go to next diagnostic" },
    ["<S-k>"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
    ["<leader>cs"] = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    ["<S-t>"] = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
    ["<leader>ci"] = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Implementation" },
    ["<leader>qd"] = { "<cmd>lua vim.lsp.buf.document_symbol()<cr>", "Query Document Symbol" }, -- ??
    ["<leader>qw"] = { "<cmd>lua vim.lsp.buf.workspace_symbol()<cr>", "Query Workspace Symbol" },
    ["<leader><S-f>"] = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },


    -- ["<leader>pj"] = {
    --   function()
    --     local line = api.nvim_get_current_line()
    --     -- local currentCursorColumn = api.nvim_win_get_cursor(0)[2]
    --
    --     -- Change the line by removing ', ' and adding a new lines with tabs
    --     local newLine, count = string.gsub(line, ", ", "◉")
    --
    --     -- Swap the current line with the new line
    --     api.nvim_set_current_line(newLine)
    --
    --     while count > 0 do
    --       -- Run keystrok 'F⏚' to find next and create a new line
    --       api.nvim_feedkeys("$F◉i<cr>", 'n', true)
    --       -- feedkey a carriage return to go to the next line
    --       
    --       count = count - 1
    --     end
    --     
    --
    --   end,
    --   "Unwrap lines",
    --   opts = { nowait = true },
    -- }
    -- 
    -- vim.keymap.set("n", "<leader>ac", ng.goto_component_with_template_file, opts)
    -- vim.keymap.set("n", "<leader>aT", ng.get_template_tcb, opts)
    -- Angular Mappings
    -- ["<leader>at"] = { ng.goto_template_for_component, opts = ng_opts },
    -- ["<leader>ac"] = { ng.goto_component_with_template_file, opts = ng_opts },
    -- ["<leader>aT"] = { ng.get_template_tcb, opts = ng_opts },

  },
  i = {
    -- This is a word sentence please help
  }
}
-- M.abc = {
--   n = {
--     ["C-p"] = "echo   'hello'",
--   }
-- }

return M
