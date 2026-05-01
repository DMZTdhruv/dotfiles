return {
  {
    "IogaMaster/neocord",
    enabled = true,
    lazy = false,
    config = function()
      local random_names = {
        "workspace",
        "projects",
        "sandbox",
        "dev-area",
        "private-folder",
        "codebase",
        "hidden-dir",
        "secure-work",
      }

      math.randomseed(os.time())
      local fake_dir = random_names[math.random(#random_names)]

      require("neocord").setup({
        editing_text = "Editing %s",
        file_explorer_text = "Browsing %s",
        workspace_text = fake_dir,
      })
    end,
  },
}
