local plugins = 
{
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = {
      sources = {
        "filesystem",
        "buffers",
        "git_status",
        "document_symbols",
      },
      source_selector = {
        winbar = true,
        sources = {
          { source = "filesystem" },
          { source = "buffers" },
          { source = "document_symbols" },
        }
      },
      default_component_configs = {
        name = {
          highlight_opened_files = true
        }
      },
      window = {
        width = 20
      },
      document_symbols = {
        renderers = {
          symbol = {
            {"indent", with_expanders = true},
            {"kind_icon", default="?" },
            {"container",
              content = {
                {"name", zindex = 10},
                -- {"kind_name", zindex = 20, align = "right"},
              }
            }
          },
        }
      }
    }
  },


  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web
        "json",
        -- "vue", "svelte",

        -- low level
        "c",
        "cpp",
        "go",
        "gomod",
        "python"
      },
    },
  },

	-- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
 
}

return plugins
