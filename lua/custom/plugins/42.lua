return {
  {
    "diogo-ss/42-header.nvim",
    -- call with <leader>42 (space, 4, 2)
    keys = { { "<leader>42", "<cmd>Stdheader<CR>", desc = "Insert 42 header" } },
    opts = {
      default_map = false,  -- don't set <F1>
      auto_update = true,   -- update header on save
      user = "adcampos",
      mail = "adcampos@student.42porto.com",
    },
    config = function(_, opts)
      require("42header").setup(opts)
    end,
  },
  {
    "MrSloth-dev/42-NorminetteNvim",
    dependencies = { "nvim-lua/plenary.nvim", "echasnovski/mini.icons" },
    config = function()
      require("norminette").setup({
        norm_keybind = "<leader>n",
        size_keybind = "<leader>ns",
        diagnost_color = "#00ff00",
        show_size = true,
      })
    end,
  },
}
