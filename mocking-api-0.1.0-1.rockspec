
package = "mocking-api"
version = "0.1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/beatsbears/kong-mock-api-plugin",
  tag = "0.1.0"
}

description = {
  summary = "Mocking api plugin",
  homepage = "http://github.com/beatsbears/kong-mock-api-plugin",
  license = "MIT"
}

dependencies = {
}

local pluginName = "mocking-api"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
