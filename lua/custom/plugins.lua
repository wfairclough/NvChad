-- Copilot config
-- 
-- Example: 
-- require('copilot').setup({
--   panel = {
--     enabled = true,
--     auto_refresh = false,
--     keymap = {
--       jump_prev = "[[",
--       jump_next = "]]",
--       accept = "<CR>",
--       refresh = "gr",
--       open = "<M-CR>"
--     },
--     layout = {
--       position = "bottom", -- | top | left | right
--       ratio = 0.4
--     },
--   },
--   suggestion = {
--     enabled = true,
--     auto_trigger = false,
--     debounce = 75,
--     keymap = {
--       accept = "<M-l>",
--       accept_word = false,
--       accept_line = false,
--       next = "<M-]>",
--       prev = "<M-[>",
--       dismiss = "<C-]>",
--     },
--   },
--   filetypes = {
--     yaml = false,
--     markdown = false,
--     help = false,
--     gitcommit = false,
--     gitrebase = false,
--     hgcommit = false,
--     svn = false,
--     cvs = false,
--     ["."] = false,
--   },
--   copilot_node_command = 'node', -- Node.js version must be > 16.x
--   server_opts_overrides = {},
-- })
--

local function print_table(t)
  for k,v in pairs(t) do
      -- check if v is type table 
      if type(v) == "table" then
          print(k.." = {")
          print_table(v)
          print("}")
      elseif type(v) == "boolean" then
          print(k.." = "..tostring(v))
      elseif type(v) == "string" then
          print(k.." = '"..v.."'")
      elseif type(v) == "number" then
          print(k.." = "..v)
      else
          print(k.." = "..v)
      end
  end
end

local plugins = {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = function()
      print("opts for copilot")
      local opt = require "custom.configs.ghcopilot"
       print_table(opt)
      return opt
    end,
    config = function(_, opts)
      print("config for copilot")
      print_table(opts)
      require("copilot").setup(opts)
    end,
  },
  {
    'cameron-wags/rainbow_csv.nvim',
    config = true,
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    },
    cmd = {
        'RainbowDelim',
        'RainbowDelimSimple',
        'RainbowDelimQuoted',
        'RainbowMultiDelim'
    },
  },
  {
    'joeveiga/ng.nvim',
  },
  {
    'simrat39/rust-tools.nvim',
    config = function (_, opts)
      print('Configuring rust-tools')
      local rt = require('rust-tools')
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        }
      })
    end
  }
}

return plugins
