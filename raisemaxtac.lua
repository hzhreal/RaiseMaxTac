local raisemaxtac = {
    VERSION = "v1.0.0",
}

function SetWantedLevelTo(level)
    if SetWantedLevel then
        local psys = Game.GetPlayer():GetPreventionSystem()
        if not psys:IsSystemEnabled() then
            print("[RaiseMaxTac] The police system is disabled!")
            return
        end

        local wl = SetWantedLevel.new()
        wl.wantedLevel = level
        psys:QueueRequest(wl)
    else
        print("[RaiseMaxTac] SetWantedLevel does not exist!")
    end
end

function CheckIfWanted()
    local psys = Game.GetPlayer():GetPreventionSystem()
    if not psys:IsSystemEnabled() then
        print("[RaiseMaxTac] The police system is disabled!")
        return false
    end

    local curWL = psys:GetWantedLevelFact()
    return curWL > 0 and curWL <= 5
end

return raisemaxtac