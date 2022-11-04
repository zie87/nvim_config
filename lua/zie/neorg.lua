require("neorg").setup {
  load = {
    ["core.defaults"] = {},
    ["core.export"] = {},
    ["core.export.markdown"] = {
      config = { extensions = "all" },
    },
    ["core.norg.concealer"] = {},
    ["core.norg.qol.toc"] = {},
    ["core.norg.completion"] = {
      config = { engine = "nvim-cmp" },
    },
  },
}
