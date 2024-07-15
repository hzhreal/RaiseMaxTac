local raisemaxtac = require("raisemaxtac")

registerHotkey("Raise_dismiss", "Raise_or_dismiss_MaxTac", function()
    if CheckIfWanted() then
        SetWantedLevelTo(EPreventionHeatStage.Heat_0)
    else
        SetWantedLevelTo(EPreventionHeatStage.Heat_5)
    end
end)

registerForEvent("onInit", function()
    print(("RaiseMaxTac %s has been initialized."):format(raisemaxtac.VERSION))
end)