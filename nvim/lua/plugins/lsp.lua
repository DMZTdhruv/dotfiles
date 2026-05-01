return {
  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = false,
    init = function()
      vim.g.rustaceanvim = {
        server = {
          default_settings = {
            ["rust-analyzer"] = {
              inlayHints = {
                bindingModeHints = { enable = false },
                chainingHints = { enable = false },
                closingBraceHints = { enable = false },
                closureReturnTypeHints = { enable = "never" },
                lifetimeElisionHints = { enable = "never" },
                parameterHints = { enable = false },
                reborrowHints = { enable = "never" },
                typeHints = { enable = false },
              },
            },
          },
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {},
        gopls = {},
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders=true",
          },
        },
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 16384,
                watchOptions = {
                  watchFile = "useFsEventsOnParentDirectory",
                  watchDirectory = "useFsEvents",
                  fallbackPolling = "dynamicPriority",
                },
              },
              suggest = {
                includeCompletionsForModuleExports = true,
                includeCompletionsForImportStatements = true,
                autoImports = true,
              },
              inlayHints = {
                enumMemberValues = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                parameterNames = { enabled = false },
                parameterTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                variableTypes = { enabled = false },
              },
              implementationsCodeLens = { enabled = false },
              referencesCodeLens = { enabled = false },
              includePackageJsonAutoImports = "auto",
              preferences = {
                importModuleSpecifier = "relative",
                includeCompletionsForModuleExports = true,
                includeCompletionsForImportStatements = true,
                includePackageJsonAutoImports = "auto",
              },
            },
            javascript = {
              suggest = {
                includeCompletionsForModuleExports = true,
                includeCompletionsForImportStatements = true,
                autoImports = true,
              },
              preferences = {
                importModuleSpecifier = "relative",
              },
            },
            vtsls = {
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                  entriesLimit = 50,
                },
              },
            },
          },
          flags = {
            debounce_text_changes = 150,
            allow_incremental_sync = true,
          },
          init_options = {
            preferences = {
              disableAutomaticTypingAcquisition = true,
            },
            hostInfo = "neovim",
          },
         capabilities = vim.tbl_deep_extend("force", require("blink.cmp").get_lsp_capabilities(), {
            workspace = {
              didChangeWatchedFiles = { dynamicRegistration = false },
            },
          }),
        },
        -- Oxlint LSP
        oxlint = {
          cmd = { "oxlint", "--lsp" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        rust = { "rustfmt" },
        lua = { "stylua" },
      },
    },
  },
}
