function Armor:GetDamageReduction(weapon, side, armor_pierced)
    local weapon_pen = weapon.ammo.PenetrationClass or weapon.PenetrationClass
    local plate_hit
    local penetrated = false
    local pen_difference = self.PenetrationClass - weapon_pen
    local dr = 0
    if pen_difference>=1 then
        dr = RevisedArmorConfigValues.NonPenDamageReduction
    else
        print("pen_difference<1")
        dr = Max(self.DamageReduction - RevisedArmorConfigValues.PenDamageReduction * pen_difference,0)
        penetrated = true
    end

    if side == "Front" then
        if self.FrontPlate then
            print("self.FrontPlate")
            pen_difference = self.FrontPlate.PenetrationClass - weapon_pen
            plate_hit = self.FrontPlate
        end
    elseif side == "Back" then
        if self.BackPlate then
            pen_difference = self.BackPlate.PenetrationClass - weapon_pen
            plate_hit = self.BackPlate
        end
    end

    if plate_hit and (plate_hit.Condition >0) then
        if pen_difference >= 1 then
            dr = dr + RevisedArmorConfigValues.NonPenDamageReduction
            penetrated = false
        else
            dr = dr + Max(RevisedArmorConfigValues.BaseDamageReduction - RevisedArmorConfigValues.PenDamageReduction * pen_difference,0)
            penetrated = true
        end
        plate_hit:DegradePlateOnHit(weapon)
    end

    if penetrated then armor_pierced[self] = true end

    return dr
end

function Armor:Penetrated(weapon, damage, side)

end

function ArmorPlate:DegradePlateOnHit(weapon)
    local weapon_pen = weapon.ammo.PenetrationClass or weapon.PenetrationClass
    local pen_difference= self.PenetrationClass - weapon_pen
    local degradation =0 
    if pen_difference == 1 then
        degradation = MulDivRound(self.Degradation, 50 + self:Random(100), 100)
    elseif pen_difference > 1 then
        degradation = Max(MulDivRound(self.Degradation, 50 - 25*pen_difference, 100),5)
    else
        dr = dr + Max(RevisedArmorConfigValues.BaseDamageReduction - RevisedArmorConfigValues.PenDamageReduction * pen_difference,0)
    end
    self.Condition = Max(self.Condition- degradation,0)
end