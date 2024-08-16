return {
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = {
      options = {
        opt = {
          showtabline = 0,
        },
      },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    ---@param opts AstroCoreOpts
    opts = {
      scope = {
        enabled = false,
      },
    },
  },
}
