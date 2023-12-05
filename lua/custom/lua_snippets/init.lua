local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local filename = function()
  return f(function(_args, snip)
    local name = vim.split(snip.snippet.env.TM_FILENAME, ".", true)
    return name[1] or ""
  end)
end

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "pw-pageobject",
            namr = "Playwright Page Object",
            dscr = "Playwright Page Object Template",
        }, {
            text("import { Locator, Page } from '@playwright/test';"),
            text(""),
            text("export class "),
            filename(),
            text("  readonly locator: Locator;"),
            text(""),
            text("  constructor(page: Page);"),
            text("  constructor(locator: Locator);"),
            text("  constructor(pageOrLocator: Page | Locator) {"),
            text("    this.locator = pageOrLocator.locator('css=${1:componentSelector}');"),
            text("  }"),
            text(""),
            text("  async ${2:methodName}() {"),
            text("    "),insert(0),
            text("  }"),
            text("}"),
            text(""), 
        }),
        snip({
          trig = "my-snip",
          namr = "My Snip",
          dscr = "Something to snip"
        }, {
        text("Let's go my snip")
      })
    },
})



