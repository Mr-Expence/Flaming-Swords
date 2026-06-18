local item = context.item
local player = context.player
local mainHand = context.mainHand

if swingCountPrev ~= P:getSwingCount(player) and mainHand then
    if (
        I:isIn(item, Tags:getVanillaTag("swords")) or
        I:isOf(item, Items:get("minecraft:trident")) or
        I:isOf(item, Items:get("minecraft:mace"))
    ) then
        S:playSound("master.tool_sound_hmi", ${volume})
    end
end
swingCountPrev = P:getSwingCount(player)