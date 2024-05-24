return {
  "catppuccin/nvim", 
  name = "catppuccin",
  priority = 1000,  -- Ensure early loading

  config = function()  -- Wrap setup in a config function
    require("catppuccin").setup({

      flavour = "macchiato", -- Choose your preferred flavor (mocha, macchiato, frappe, latte)
      background = {
        light = "latte",
        dark = "macchiato", 
      },

      -- General Options
      transparent_background = false,  -- Disable transparency for better readability
      show_end_of_buffer = false,      -- Hide '~' characters at end of buffers
      term_colors = true,              -- Set terminal colors if needed
      dim_inactive = {
        enabled = false,             -- Don't dim inactive windows
        shade = "dark",              -- Shade type if dimming is enabled
        percentage = 0.15,            -- Dimming intensity if enabled
      },
      no_italic = false,               -- Allow italics
      no_bold = false,                 -- Allow bold
      no_underline = false,            -- Allow underlines

      -- Style Specific Options (Customize as you like)
      styles = {
        comments = { "italic" }, 
        conditionals = { "italic" },
        functions = { "bold" },     
        keywords = { "italic" },    
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {},              -- Uncomment to turn off hard-coded styles
      },
      
      -- Integrations
      integrations = {
        alpha = true,
        nvimtree = true,             -- NvimTree file explorer
        telescope = true,           -- Telescope fuzzy finder
        which_key = true
      },
    })

    -- Set the colorscheme
    vim.cmd("colorscheme catppuccin") 
  end,
}
