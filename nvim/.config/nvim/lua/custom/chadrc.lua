---@type ChadrcConfig 
 local M = {}
 M.ui = {theme = 'github_dark',
    theme_toggle = {'github_light','github_dark'},
  tabufline = {
    lazyload = false,
    enabled = true
  },
  nvdash ={
    load_on_startup = true
  }
}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
 return M
