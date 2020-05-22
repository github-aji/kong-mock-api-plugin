package = "mock-api"
version = "0.1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/github-aji/kong-mock-api-plugin",
  tag = "0.1.0"
}

description = {
  summary = "hide-token is a plugin for removing potentially sensitive security token headers from responses.",
  homepage = "http://github.com/github-aji/kong-mock-api",
  license = "Apache 2.0"
}

dependencies = {
}

local pluginName = "mock-api"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".header_filter"] = "kong/plugins/"..pluginName.."/header_filter.lua",
  }
}