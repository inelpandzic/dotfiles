require('virtual-column').init({
    column_number = 120,
    overlay = false,
    vert_char = "▏",
    enabled = true,

    -- do not show column on this buffers and types
    buftype_exclude = { "terminal", "nofile" },
    filetype_exclude = {
    	"help",
      "startify",
      "dashboard",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
    },
})

vim.cmd [[hi VirtualColumn guifg=#383838]]

