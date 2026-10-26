-- Programs and the installed Cat launcher used by startup and shortcuts.
local terminal = "ghostty"
local catDirectory = os.getenv("HOME") .. "/.local/bin/cat-shell"

local function shellQuote(value)
    return "'" .. value:gsub("'", "'\\''") .. "'"
end

return {
    terminal = terminal,
    fileManager = terminal .. " -e yazi",
    catCommand = shellQuote(catDirectory .. "/run.sh"),
    logoutCommand = "bash " .. shellQuote(catDirectory .. "/scripts/session.sh") .. " logout",
}
