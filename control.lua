script.on_event({defines.events.on_entity_damaged}, 
    function(event)
        if event.cause ~= nil then

            local victim = event.entity
            local culprit = event.cause

            local isVehicle = nil
            if culprit.type == "car" then isVehicle = true end
            if culprit.type == "artillery-wagon" then isVehicle = true end
            if culprit.type == "cargo-wagon" then isVehicle = true end
            if culprit.type == "fluid-wagon"  then isVehicle = true end
            if culprit.type == "locomotive" then isVehicle = true end

            if victim.type == "character" and isVehicle then

                if victim.get_inventory(defines.inventory.character_armor).get_item_count("bouncy-armor") >= 1 then
                    
                    
                    local direction = nil
                    local angle = culprit.orientation
                    
                    local minePosition = {
                        x = (victim.position.x < culprit.position.x and 1 or -1),
                        y = (victim.position.y < culprit.position.y and 1 or -1)
                    }

                    local pos = {}
                    if victim.position.x < (culprit.position.x - 1) then
                        pos.x = -1
                    elseif victim.position.x > (culprit.position.x + 1) then
                        pos.x = 1
                    else
                        pos.x = 0
                    end

                    if victim.position.y < (culprit.position.y - 1) then
                        pos.y = -1
                    elseif victim.position.y > (culprit.position.y + 1) then
                        pos.y = 1
                    else
                        pos.y = 0
                    end

                    game.print("x: " .. minePosition.x .. " y: " .. minePosition.y)
                    oldpos = { x = victim.position.x, y = victim.position.y}

                    victim.teleport(victim.position.x + pos.x, victim.position.y + pos.y)
                    victim.surface.create_entity{name="push-mine", position={oldpos.x, oldpos.y}}
                    
                    
                end
            end

        end

    end
)
script.on_event({defines.events.on_tick},
    function(event)
        for index, player in pairs(game.players) do
        end
    end
)