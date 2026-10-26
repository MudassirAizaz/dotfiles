-- Load configuration files beside the real config, including through symlinks.
local source = assert(debug.getinfo(1, "S").source:match("^@(.+)$"))
local reader = assert(io.popen("readlink -f -- '" .. source:gsub("'", "'\\''") .. "'", "r"))
local configPath = assert(reader:read("*l"), "Could not resolve the modulesland config path")
reader:close()
local configDirectory = assert(configPath:match("^(.*)/[^/]+$"))
package.path = configDirectory .. "/?.lua;" .. package.path

require("modules.programs")
require("modules.monitors")
require("modules.autostart")
require("modules.environment")
require("modules.appearance")
require("modules.animations")
require("modules.layouts")
require("modules.misc")
require("modules.input")
require("modules.keybinds")
require("modules.rules")
