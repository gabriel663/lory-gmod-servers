ITEM.Name = "Biohazard"
ITEM.Price = 2000
ITEM.Model = "models/props/de_train/biohazardtank.mdl"
ITEM.Bone = "ValveBiped.Bip01_Spine2"

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
    local Size = Vector(0.1175, 0.1175, 0.1175)
    local mat = Matrix()
    mat:Scale(Size)
    model:EnableMatrix("RenderMultiply", mat)

    model:SetMaterial("")
    pos = pos + (ang:Right() * 1.5) + (ang:Up() * 0) + (ang:Forward() * 0)
    ang:RotateAroundAxis(ang:Right(), 0)
    ang:RotateAroundAxis(ang:Up(), 0)
    ang:RotateAroundAxis(ang:Forward(), 90)

    return model, pos, ang
end
