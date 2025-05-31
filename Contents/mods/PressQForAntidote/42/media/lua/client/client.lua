local function OnKeyPressed(key)
    if key == Keyboard.KEY_Q then
        local bodyParts = getPlayer():getBodyDamage():getBodyParts()
        local infectionCleared = false

        for i = 0, bodyParts:size() - 1 do
            local part = bodyParts:get(i)
            if part:getWoundInfectionLevel() > 0 then
                part:setWoundInfectionLevel(0)
                infectionCleared = true
            end
        end

        if infectionCleared then
            getPlayer():addLineChatElement(getText("IGUI_PQFA_Shout"))
        end
    end
end

Events.OnKeyPressed.Add(OnKeyPressed)
