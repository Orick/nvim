local status, lspkind = pcall(require, "lspkind")
if (not status) then return end

lspkind.init({
  -- enables text annotations
  --
  -- default: true
  mode = 'symbol',

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'codicons',

  -- override preset symbols
  --
  -- default: {}
  symbol_map = {
    Text = '', -- Text
    Method = '', -- Method
    Function = '', -- Function
    Constructor = '', -- Constructor
    Field = '', -- Field
    Variable = '', -- Variable
    Class = '', -- Class
    Interface = 'ﰮ', -- Interface
    Module = '', -- Module
    Property = '', -- Property
    Unit = '', -- Unit
    Value = '', -- Value
    Enum = '', -- Enum
    Keyword = '', -- Keyword
    Snippet = '﬌', -- Snippet
    Color = '', -- Color
    File = '', -- File
    Reference = '', -- Reference
    Folder = '', -- Folder
    EnumMember = '', -- EnumMember
    Constant = '', -- Constant
    Struct = '', -- Struct
    Event = '', -- Event
    Operator = 'ﬦ', -- Operator
    TypeParameter = '' -- TypeParameter
  },
})
