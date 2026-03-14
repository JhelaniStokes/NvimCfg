local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
  s("iferr", {
    t("if err != nil {"),
    t({ "", "\t" }),
    i(1, "return err"),
    t({ "", "}" }),
  }),
  s("ifreserr",
    fmt([[
      if err != nil {{
        res := {}{{
          MessageRes: MessageRes{{
            Status:       false,
            ErrorMessage: {},
          }},
        }}
        err = sendRes(stream, res, ctx)
        if err != nil {{
          return err
        }}

        return err
      }}
      ]],
    {
      i(1, "resType"),
      i(2, '"errmsg"'),
    }))
})


