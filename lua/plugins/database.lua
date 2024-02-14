return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
    "DBUIToggle",
  },
  keys = { { "<leader><leader>bu", ":tab DBUI<cr>", desc = "Open Database client" } },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_auto_execute_table_helpers = 1
    vim.g.db_ui_winwidth = 30
    vim.g.db_ui_table_helpers = {
      mysql = {
        Count = "select count(1) from {optional_schema}{table}",
        Explain = "EXPLAIN {last_query}",
      },
      sqlite = {
        Describe = "PRAGMA table_info({table})",
      },
    }
    vim.g.connection_list = {
      {
        name = "local",
        driver = "sqlite3",
        database = vim.fn.expand("~/.config/nvim/db.sqlite3"),
      },
      {
        name = "remote",
        driver = "mysql",
        host = "localhost",
      },
    }
  end,
}
