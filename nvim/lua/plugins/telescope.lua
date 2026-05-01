return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
    pickers = {
      live_grep = {
        additional_args = function()
          return { "--hidden", "--glob", "!.sst/**", "--glob", "!.*" }
        end,
      },
    },
  },
}
