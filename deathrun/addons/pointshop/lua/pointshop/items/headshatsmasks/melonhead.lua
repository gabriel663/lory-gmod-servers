ITEM.Name = "Melon Head"
ITEM.Price = 1000
ITEM.Model = "models/props_junk/watermelon01.mdl"
ITEM.Attachment = "eyes"

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
    pos = pos + (ang:Forward() * -2)

    return model, pos, ang
end
