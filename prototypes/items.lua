local bouncyArmor = table.deepcopy(data.raw.armor["heavy-armor"])

bouncyArmor.name = "bouncy-armor"
bouncyArmor.icons = {
    {
        icon=bouncyArmor.icon,
        tint={r=0.8,g=0.4,b=0.8,a=0.3}
    }
}
bouncyArmor.resistances = {
    {
        type = "impact",
        decrease = 99999,
        percent = 0
    }
}

local bouncyArmor_recipe = table.deepcopy(data.raw.recipe["heavy-armor"])
bouncyArmor_recipe.enabled = true
bouncyArmor_recipe.name = "bouncy-armor"
bouncyArmor_recipe.ingredients = {{"copper-plate", 20},{"steel-plate", 10},{"plastic-bar", 50}}
bouncyArmor_recipe.result = "bouncy-armor"
data:extend{bouncyArmor, bouncyArmor_recipe}

local pushMine = table.deepcopy(data.raw.item["land-mine"])
pushMine.name = "push-mine"
pushMine.icon = "__BouncyArmor__/graphics/pushmine.png"
pushMine.place_result = "push-mine"

local pushmine_recipe = table.deepcopy(data.raw.recipe["land-mine"])
pushmine_recipe.enabled = false
pushmine_recipe.name = "push-mine"
pushmine_recipe.ingredients = {{"land-mine", 5},{"discharge-defense-remote", 1}}
pushmine_recipe.result = "push-mine"



data:extend{pushMine, pushmine_recipe}