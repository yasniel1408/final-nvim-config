return {
  "gen740/SmoothCursor.nvim",
  config = function()
    require("smoothcursor").setup({
      type = "exp", -- Cursor movement calculation method, choose "default", "exp" (exponential) or "matrix".

      texthl = "SmoothCursor", -- Highlight group. Default is { bg = nil, fg = "#FFD400" }. Disabled in fancy mode.
      fancy = {
        enable = true, -- enable fancy mode
        head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil }, -- false to disable fancy head
        body = {
          { cursor = "", texthl = "SmoothCursorRed" },
          { cursor = "", texthl = "SmoothCursorOrange" },
          { cursor = "●", texthl = "SmoothCursorYellow" },
          { cursor = "●", texthl = "SmoothCursorGreen" },
          { cursor = "•", texthl = "SmoothCursorAqua" },
          { cursor = ".", texthl = "SmoothCursorBlue" },
          { cursor = ".", texthl = "SmoothCursorPurple" },
        },
        tail = { cursor = nil, texthl = "SmoothCursor" }, -- false to disable fancy tail
      },
      autostart = true, -- Automatically start SmoothCursor
      always_redraw = true, -- Redraw the screen on each update
      flyin_effect = nil, -- Choose "bottom" or "top" for flying effect
      speed = 25, -- Max speed is 100 to stick with your current position
      intervals = 35, -- Update intervals in milliseconds
      priority = 10, -- Set marker priority
      timeout = 3000, -- Timeout for animations in milliseconds
      threshold = 3, -- Animate only if cursor moves more than this many lines
      disable_float_win = false, -- Disable in floating windows
      enabled_filetypes = nil, -- Enable only for specific file types, e.g., { "lua", "vim" }
      disabled_filetypes = nil, -- Disable for these file types, ignored if enabled_filetypes is set. e.g., { "TelescopePrompt", "NvimTree" }
    })
  end,
}
