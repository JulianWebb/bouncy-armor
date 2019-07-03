local pushmine = table.deepcopy(data.raw["land-mine"]["land-mine"])

pushmine.name = "push-mine"
pushmine.icon = "__BouncyArmor__/graphics/pushmine.png"
pushmine.picture_set.filename = "__BouncyArmor__/graphics/blank.png"
pushmine.picture_set.tint = {r=0, g=0, b=0, a=0}
pushmine.picture_safe.filename = "__BouncyArmor__/graphics/blank.png"
pushmine.picture_safe.tint = {r=0, g=0, b=0, a=0}
pushmine.picture_set_enemy.filename = "__BouncyArmor__/graphics/blank.png"
pushmine.picture_set_enemy.tint = {r=0, g=0, b=0, a=0}
pushmine.damage = 0
pushmine.trigger_force = "all"
pushmine.timeout = 1
pushmine.corpse = ""
pushmine.dying_explosion = ""
pushmine.create_ghost_on_death = false
pushmine.health = 10000
pushmine.trigger_radius = 10

pushmine.action = {
    type = "direct",
    perimeter = 8,
    force = "ally",
    action_delivery = {
        type = "instant",
        target_effects = {
            type = "push-back",
            distance = 1000
        }
    }   
}
data:extend{pushmine}