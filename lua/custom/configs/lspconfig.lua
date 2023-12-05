local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "emmet_ls",
  "cssls",
  "clangd",
  "tsserver",
  "jsonls",
  "yamlls",
  "rust_analyzer",
  "kotlin_language_server",
  "angularls",
  "bashls",
  "lemminx",
  "docker_compose_language_service",
  "dockerls",
  "pylsp",
  "sqlls",
  "lua_ls",
  "vuels",
  "gopls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Without the loop, you would have to manually set up each LSP 
-- 
-- lspconfig.html.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
--
-- lspconfig.cssls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }




    -- 󰄳  kotlin-language-server (keywords: kotlin)
    -- 󰄳  lemminx (keywords: xml)
    -- 󰄳  json-lsp (keywords: json)
    -- 󰄳  angular-language-server (keywords: angular)
    -- 󰄳  astro-language-server (keywords: astro)
    -- 󰄳  bash-language-server (keywords: bash)
    -- 󰄳  clang-format (keywords: c, c#, c++, json, java, javascript)
    -- 󰄳  clangd (keywords: c, c++)
    -- 󰄳  codelldb (keywords: c, c++, rust)
    -- 󰄳  css-lsp (keywords: css, scss, less)
    -- 󰄳  deno (keywords: javascript, typescript)
    -- 󰄳  docker-compose-language-service (keywords: docker)
    -- 󰄳  dockerfile-language-server (keywords: docker)
    -- 󰄳  doctoc (keywords: markdown)
    -- 󰄳  emmet-language-server (keywords: emmet)
    -- 󰄳  html-lsp (keywords: html)
    -- 󰄳  lua-language-server (keywords: lua)
    -- 󰄳  luau-lsp (keywords: luau)
    -- 󰄳  markdown-toc (keywords: markdown)
    -- 󰄳  millet (keywords: standard ml)
    -- 󰄳  prettier (keywords: angular, css, flow, graphql, html, json, jsx, javascript, less, markdown, scss, typescript, vue, yaml)
    -- 󰄳  python-lsp-server (keywords: python)
    -- 󰄳  rust-analyzer (keywords: rust)
    -- 󰄳  sql-formatter (keywords: sql)
    -- 󰄳  stylua (keywords: lua, luau)
    -- 󰄳  typescript-language-server (keywords: typescript, javascript)
    -- 󰄳  vue-language-server (keywords: vue)
    -- 󰄳  xmlformatter (keywords: xml)
    -- 󰄳  yaml-language-server (keywords: yaml)
