-- A host may provide monitor settings separately; the checkout does not require them.
-- if package.searchpath("modules.monitors", package.path) then
--     require("modules.monitors")
-- end
hl.monitor({
    output   = "eDP-1",
    mode     = "preferred",
    position = "auto",
    scale    = "1",
})
