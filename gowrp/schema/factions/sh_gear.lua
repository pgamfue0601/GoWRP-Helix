FACTION.name = "Soldado Gear"
FACTION.description = "Ya sea por reclutamiento propio o forzoso, bienvenido a tu nueva vida como soldado de la CGO."
FACTION.color = Color(49, 76, 151)
FACTION.isGloballyRecognized = true
FACTION.isDefault = true
FACTION.models = {
    "models/gearsofwar/players/custom/cog/cog_gear_ue.mdl",
    "models/gearsofwar/players/custom/cog/cog_female_gear_ue.mdl",
    "models/gearsofwar/players/custom/cog/ben_carmine_ue.mdl",
    "models/gearsofwar/players/custom/cog/redshirt_gow3.mdl",
    "models/gearsofwar/players/custom/cog/clayton_carmine_classic.mdl",
    "models/gearsofwar/players/custom/cog/redshirt_gow1.mdl",
    "models/gearsofwar/players/custom/cog/cog_template.mdl",
    -- Agrega más modelos aquí
}


function FACTION:OnCharacterCreated(client, character)
    local inventory = character:GetInventory()

    inventory:Add("lasgun", 1)
    inventory:Add("lasammo", 2)
    inventory:Add("knife", 1)

    character:SetName("Probitor " .. character:GetName());

end

FACTION_GEAR = FACTION.index
