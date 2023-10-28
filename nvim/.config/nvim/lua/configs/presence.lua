require("presence").setup({
  -- General options
  auto_update        = true,                    -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
  neovim_image_text  = "The Legend of Neovim",  -- Text displayed when hovered over the Neovim image
  main_image         = "file",                  -- Main image display (either "neovim" or "file")
  log_level          = nil,                     -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
  debounce_timeout   = 10,                      -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
  enable_line_number = true,                    -- Displays the current line number instead of the current project
  buttons            = false,                   -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
  show_time          = true,                    -- Show the timer
})
