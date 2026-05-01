return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true,
        show_end_of_buffer = false,
        term_colors = true,
        dim_inactive = {
          enabled = false,
        },
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          keywords = { "italic" },
          functions = {},
          variables = {},
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = { enabled = true },
          treesitter = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
        },
        custom_highlights = function(colors)
          return {
            -- Core UI elements
            Normal = { bg = "NONE" },
            NormalFloat = { bg = "NONE" },
            FloatBorder = { fg = colors.overlay0, bg = "NONE" },
            FloatTitle = { bg = "NONE" },
            NormalNC = { bg = "NONE" },

            -- Telescope
            TelescopeNormal = { bg = "NONE" },
            TelescopeBorder = { fg = colors.overlay0, bg = "NONE" },
            TelescopePromptNormal = { bg = "NONE" },
            TelescopePromptBorder = { fg = colors.overlay0, bg = "NONE" },
            TelescopeResultsNormal = { bg = "NONE" },
            TelescopeResultsBorder = { fg = colors.overlay0, bg = "NONE" },
            TelescopePreviewNormal = { bg = "NONE" },
            TelescopePreviewBorder = { fg = colors.overlay0, bg = "NONE" },
            TelescopeTitle = { bg = "NONE" },
            TelescopePromptTitle = { bg = "NONE" },
            TelescopeResultsTitle = { bg = "NONE" },
            TelescopePreviewTitle = { bg = "NONE" },
            TelescopeSelection = { bg = colors.surface0, fg = colors.text },
            TelescopeSelectionCaret = { fg = colors.pink, bg = colors.surface0 },

            -- Popup menu
            Pmenu = { fg = colors.text, bg = "NONE" },
            PmenuSel = { fg = colors.text, bg = colors.surface0, bold = true },
            PmenuSbar = { bg = "NONE" },
            PmenuThumb = { bg = colors.surface0 },

            -- Sidebar and splits
            WinSeparator = { fg = colors.overlay0, bg = "NONE" },
            VertSplit = { fg = colors.overlay0, bg = "NONE" },

            -- Statusline
            StatusLine = { bg = "NONE" },
            StatusLineNC = { bg = "NONE" },

            -- Tabline
            TabLine = { bg = "NONE" },
            TabLineFill = { bg = "NONE" },
            TabLineSel = { bg = "NONE" },

            -- Line numbers and signs
            LineNr = { bg = "NONE" },
            CursorLineNr = { bg = "NONE" },
            SignColumn = { bg = "NONE" },

            -- Fold and cursor
            FoldColumn = { bg = "NONE" },
            Folded = { bg = "NONE" },
            CursorLine = { bg = colors.surface0 },
            CursorColumn = { bg = colors.surface0 },

            -- End of buffer
            EndOfBuffer = { bg = "NONE" },

            -- Additional UI elements
            MsgArea = { bg = "NONE" },
            ModeMsg = { bg = "NONE" },
            MsgSeparator = { bg = "NONE" },
            NonText = { bg = "NONE" },
            Whitespace = { bg = "NONE" },
            ColorColumn = { bg = "NONE" },

            -- LSP and diagnostics
            DiagnosticSignError = { bg = "NONE" },
            DiagnosticSignWarn = { bg = "NONE" },
            DiagnosticSignInfo = { bg = "NONE" },
            DiagnosticSignHint = { bg = "NONE" },

            -- Git signs
            GitSignsAdd = { fg = colors.green, bg = "NONE" },
            GitSignsChange = { fg = colors.yellow, bg = "NONE" },
            GitSignsDelete = { fg = colors.red, bg = "NONE" },
            GitSignsAddNr = { bg = "NONE" },
            GitSignsChangeNr = { bg = "NONE" },
            GitSignsDeleteNr = { bg = "NONE" },
            GitSignsAddLn = { bg = "NONE" },
            GitSignsChangeLn = { bg = "NONE" },
            GitSignsDeleteLn = { bg = "NONE" },

            -- LazyVim UI
            LazyNormal = { bg = "NONE" },
            LazyButton = { bg = "NONE" },
            LazyButtonActive = { bg = "NONE" },
            LazyH1 = { bg = "NONE" },
            LazyProgress = { bg = "NONE" },

            -- Completion
            CmpItemMenu = { bg = "NONE" },
            CmpItemKind = { bg = "NONE" },
            CmpItemAbbrMatch = { fg = colors.blue, bold = true },
            CmpItemAbbrMatchFuzzy = { fg = colors.blue, bold = true },

            -- NvimTree
            NvimTreeNormal = { bg = "NONE" },
            NvimTreeNormalNC = { bg = "NONE" },
            NvimTreeWinSeparator = { bg = "NONE" },
            NvimTreeCursorLine = { bg = colors.surface0 },

            -- Miscellaneous
            Visual = { bg = colors.surface1, fg = colors.text },
            Search = { fg = colors.base, bg = colors.yellow },
            IncSearch = { fg = colors.base, bg = colors.peach },
            CurSearch = { fg = colors.base, bg = colors.pink },
          }
        end,
      })
      vim.cmd("colorscheme catppuccin")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "catppuccin" },
  },
  {
    "mawkler/modicator.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    config = function()
      require("modicator").setup({
        show_warnings = true,
        integration = {
          lualine = {
            enabled = true,
            mode_section = nil,
            highlight = "bg",
          },
        },
        highlights = {
          modes = {
            i = { bg = "NONE" },
            n = { bg = "NONE" },
            v = { bg = "NONE" },
            V = { bg = "NONE" },
            ["\22"] = { bg = "NONE" },
            c = { bg = "NONE" },
            R = { bg = "NONE" },
          },
        },
      })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          numbers = "none",
          diagnostics = "nvim_lsp",
          separator_style = "thin",
          show_buffer_close_icons = false,
          show_close_icon = false,
          enforce_regular_tabs = true,
          always_show_bufferline = false,
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "center",
              separator = true,
            },
          },
        },
        highlights = {
          fill = { bg = "NONE" },
          background = { bg = "NONE" },
          tab = { bg = "NONE" },
          tab_selected = { bg = "NONE" },
          tab_separator = { bg = "NONE" },
          tab_separator_selected = { bg = "NONE" },
          buffer = { bg = "NONE" },
          buffer_visible = { bg = "NONE" },
          buffer_selected = { bg = "NONE" },
          separator = { bg = "NONE" },
          separator_visible = { bg = "NONE" },
          separator_selected = { bg = "NONE" },
          indicator = { bg = "NONE" },
          indicator_visible = { bg = "NONE" },
          modified = { bg = "NONE" },
          modified_visible = { bg = "NONE" },
          modified_selected = { bg = "NONE" },
        },
      })
    end,
  },
}

-- return {
--   {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     priority = 1000,
--     config = function()
--       require("rose-pine").setup({
--         variant = "moon", -- main, moon, or dawn (moon is closest to catppuccin mocha vibes)
--         dark_variant = "moon",
--         dim_inactive_windows = false,
--         extend_background_behind_borders = false,
--         enable = {
--           terminal = true,
--           legacy_highlights = true,
--           migrations = true,
--         },
--         styles = {
--           bold = true,
--           italic = true,
--           transparency = true, -- enables transparent backgrounds globally
--         },
--         groups = {
--           border = "muted",
--           link = "iris",
--           panel = "surface",
--           error = "love",
--           hint = "iris",
--           info = "foam",
--           note = "pine",
--           todo = "rose",
--           warn = "gold",
--           git_add = "foam",
--           git_change = "gold",
--           git_delete = "love",
--           git_dirty = "rose",
--           git_ignore = "muted",
--           git_merge = "iris",
--           git_rename = "pine",
--           git_stage = "iris",
--           git_text = "rose",
--           git_untracked = "subtle",
--           h1 = "iris",
--           h2 = "foam",
--           h3 = "rose",
--           h4 = "gold",
--           h5 = "pine",
--           h6 = "foam",
--         },
--         highlight_groups = {
--           -- Core UI elements
--           Normal = { bg = "NONE" },
--           NormalFloat = { bg = "NONE" },
--           FloatBorder = { fg = "muted", bg = "NONE" },
--           FloatTitle = { bg = "NONE" },
--           NormalNC = { bg = "NONE" },
--
--           -- Telescope
--           TelescopeNormal = { bg = "NONE" },
--           TelescopeBorder = { fg = "muted", bg = "NONE" },
--           TelescopePromptNormal = { bg = "NONE" },
--           TelescopePromptBorder = { fg = "muted", bg = "NONE" },
--           TelescopeResultsNormal = { bg = "NONE" },
--           TelescopeResultsBorder = { fg = "muted", bg = "NONE" },
--           TelescopePreviewNormal = { bg = "NONE" },
--           TelescopePreviewBorder = { fg = "muted", bg = "NONE" },
--           TelescopeTitle = { bg = "NONE" },
--           TelescopePromptTitle = { bg = "NONE" },
--           TelescopeResultsTitle = { bg = "NONE" },
--           TelescopePreviewTitle = { bg = "NONE" },
--           TelescopeSelection = { bg = "highlight_low", fg = "text" },
--           TelescopeSelectionCaret = { fg = "rose", bg = "highlight_low" },
--
--           -- Popup menu
--           Pmenu = { fg = "text", bg = "NONE" },
--           PmenuSel = { fg = "text", bg = "highlight_low", bold = true },
--           PmenuSbar = { bg = "NONE" },
--           PmenuThumb = { bg = "highlight_low" },
--
--           -- Sidebar and splits
--           WinSeparator = { fg = "muted", bg = "NONE" },
--           VertSplit = { fg = "muted", bg = "NONE" },
--
--           -- Statusline
--           StatusLine = { bg = "NONE" },
--           StatusLineNC = { bg = "NONE" },
--
--           -- Tabline
--           TabLine = { bg = "NONE" },
--           TabLineFill = { bg = "NONE" },
--           TabLineSel = { bg = "NONE" },
--
--           -- Line numbers and signs
--           LineNr = { bg = "NONE" },
--           CursorLineNr = { bg = "NONE" },
--           SignColumn = { bg = "NONE" },
--
--           -- Fold and cursor
--           FoldColumn = { bg = "NONE" },
--           Folded = { bg = "NONE" },
--           CursorLine = { bg = "NONE" },
--           CursorColumn = { bg = "NONE" },
--
--           -- End of buffer
--           EndOfBuffer = { bg = "NONE" },
--
--           -- Additional UI elements
--           MsgArea = { bg = "NONE" },
--           ModeMsg = { bg = "NONE" },
--           MsgSeparator = { bg = "NONE" },
--           NonText = { bg = "NONE" },
--           Whitespace = { bg = "NONE" },
--           ColorColumn = { bg = "NONE" },
--
--           -- Styled comments/keywords (matching catppuccin italic styles)
--           Comment = { italic = true },
--           Conditional = { italic = true },
--           Keyword = { italic = true },
--
--           -- LSP diagnostics with undercurl
--           DiagnosticUnderlineError = { undercurl = true, sp = "love" },
--           DiagnosticUnderlineWarn = { undercurl = true, sp = "gold" },
--           DiagnosticUnderlineInfo = { undercurl = true, sp = "foam" },
--           DiagnosticUnderlineHint = { undercurl = true, sp = "iris" },
--
--           -- Diagnostic signs
--           DiagnosticSignError = { bg = "NONE" },
--           DiagnosticSignWarn = { bg = "NONE" },
--           DiagnosticSignInfo = { bg = "NONE" },
--           DiagnosticSignHint = { bg = "NONE" },
--
--           -- Git signs
--           GitSignsAdd = { fg = "foam", bg = "NONE" },
--           GitSignsChange = { fg = "gold", bg = "NONE" },
--           GitSignsDelete = { fg = "love", bg = "NONE" },
--           GitSignsAddNr = { bg = "NONE" },
--           GitSignsChangeNr = { bg = "NONE" },
--           GitSignsDeleteNr = { bg = "NONE" },
--           GitSignsAddLn = { bg = "NONE" },
--           GitSignsChangeLn = { bg = "NONE" },
--           GitSignsDeleteLn = { bg = "NONE" },
--
--           -- LazyVim UI
--           LazyNormal = { bg = "NONE" },
--           LazyButton = { bg = "NONE" },
--           LazyButtonActive = { bg = "NONE" },
--           LazyH1 = { bg = "NONE" },
--           LazyProgress = { bg = "NONE" },
--
--           -- Completion
--           CmpItemMenu = { bg = "NONE" },
--           CmpItemKind = { bg = "NONE" },
--           CmpItemAbbrMatch = { fg = "foam", bold = true },
--           CmpItemAbbrMatchFuzzy = { fg = "foam", bold = true },
--
--           -- NvimTree
--           NvimTreeNormal = { bg = "NONE" },
--           NvimTreeNormalNC = { bg = "NONE" },
--           NvimTreeWinSeparator = { bg = "NONE" },
--           NvimTreeCursorLine = { bg = "highlight_low" },
--
--           -- Miscellaneous
--           Visual = { bg = "highlight_med", fg = "text" },
--           Search = { fg = "base", bg = "gold" },
--           IncSearch = { fg = "base", bg = "gold" },
--           CurSearch = { fg = "base", bg = "rose" },
--         },
--       })
--       vim.cmd("colorscheme rose-pine")
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = { colorscheme = "rose-pine" },
--   },
--   {
--     "mawkler/modicator.nvim",
--     event = "VeryLazy",
--     init = function()
--       vim.o.cursorline = true
--       vim.o.number = true
--       vim.o.termguicolors = true
--     end,
--     config = function()
--       require("modicator").setup({
--         show_warnings = true,
--         integration = {
--           lualine = {
--             enabled = true,
--             mode_section = nil,
--             highlight = "bg",
--           },
--         },
--         highlights = {
--           modes = {
--             i = { bg = "NONE" },
--             n = { bg = "NONE" },
--             v = { bg = "NONE" },
--             V = { bg = "NONE" },
--             ["\22"] = { bg = "NONE" },
--             c = { bg = "NONE" },
--             R = { bg = "NONE" },
--           },
--         },
--       })
--     end,
--   },
--   {
--     "akinsho/bufferline.nvim",
--     enabled = false,
--     version = "*",
--     dependencies = { "nvim-tree/nvim-web-devicons" },
--     event = "VeryLazy",
--     config = function()
--       require("bufferline").setup({
--         options = {
--           mode = "buffers",
--           numbers = "none",
--           diagnostics = "nvim_lsp",
--           separator_style = "thin",
--           show_buffer_close_icons = false,
--           show_close_icon = false,
--           enforce_regular_tabs = true,
--           always_show_bufferline = false,
--           offsets = {
--             {
--               filetype = "NvimTree",
--               text = "File Explorer",
--               text_align = "center",
--               separator = true,
--             },
--           },
--         },
--         highlights = {
--           fill = { bg = "NONE" },
--           background = { bg = "NONE" },
--           tab = { bg = "NONE" },
--           tab_selected = { bg = "NONE" },
--           tab_separator = { bg = "NONE" },
--           tab_separator_selected = { bg = "NONE" },
--           buffer = { bg = "NONE" },
--           buffer_visible = { bg = "NONE" },
--           buffer_selected = { bg = "NONE" },
--           separator = { bg = "NONE" },
--           separator_visible = { bg = "NONE" },
--           separator_selected = { bg = "NONE" },
--           indicator = { bg = "NONE" },
--           indicator_visible = { bg = "NONE" },
--           modified = { bg = "NONE" },
--           modified_visible = { bg = "NONE" },
--           modified_selected = { bg = "NONE" },
--         },
--       })
--     end,
--   },
-- }
