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


-- {
-- 		"prefix": "pw-page-object",
-- 		"body": [
-- 			"import { Locator, Page } from '@playwright/test';",
-- 			"",
-- 			"export class ${TM_FILENAME_BASE/([a-z]*)(-)?/${1:/capitalize}/g} {",
-- 			"	 readonly locator: Locator;",
-- 			"",
-- 			"  constructor(page: Page);"
-- 		  "  constructor(locator: Locator);"
-- 		  "  constructor(pageOrLocator: Page | Locator) {"
--       "    this.locator = pageOrLocator.locator('css=${1:componentSelector}');"
-- 			"	 }",
-- 			"",
-- 			"  async ${2:methodName}() {",
-- 			"    $0",
-- 			"  }",
-- 			"}",
-- 			""
-- 		],
-- 		"description": "Create a new Playwright Page Object"
-- 	}

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
            -- filename(),
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
    },
})


