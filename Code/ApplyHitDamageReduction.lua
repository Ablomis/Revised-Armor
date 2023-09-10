function Unit:ApplyHitDamageReduction(hit, weapon, hit_body_part, ignore_cover, ignore_armor, record_breakdown)
  local attacker = g_Units[weapon.owner]

  local angleDifference = (self:GetPosOrientation()/60-attacker:GetPosOrientation()/60 + 360) % 360
  local side
  

  if angleDifference >= 0 and angleDifference <= 90 then
      side = "Right"
  elseif angleDifference > 90 and angleDifference <= 180 then
    side = "Front"
  elseif angleDifference > 180 and angleDifference <= 270 then
    side = "Left"
  else
    side = "Back"
  end

  local damage = hit.damage or 0
  local dmg = damage
  local armor_decay, armor_pierced = {}, {}
  local weapon_pen_class = weapon:HasMember("PenetrationClass") and weapon.PenetrationClass or 1
  self:ForEachItem("Armor", function(item, slot)
    if 0 < dmg and slot ~= "Inventory" and item.ProtectedBodyParts and item.ProtectedBodyParts[hit_body_part] then
      local dr, degrade = 0, 0

      if not ignore_armor and 0 < item.Condition then
        print("here")
        dr = item.DamageReduction
        degrade = MulDivRound(item.Degradation, 50 + self:Random(100), 100)
        if slot=="Torso" then
          print("Torso")
          dr = item:GetDamageReduction(weapon, side, armor_pierced)
        else
          local pen_diff = item.PenetrationClass - weapon_pen_class
          if pen_diff > 0 and self:Random(100)<=item.Condition then
              dr = RevisedArmorConfigValues.NonPenDamageReduction
              degrade = MulDivRound(degrade, RevisedArmorConfigValues.ArmorDegradationScale, 100)
          else
            armor_pierced[item] = true
            dr = Max(RevisedArmorConfigValues.BaseDamageReduction + RevisedArmorConfigValues.PenDamageReduction * pen_diff,0) 
            if string.find(item.class, "Weave") then 
              dr =  dr + RevisedArmorConfigValues.WeavePaddingBonus 
              end
          end
        end
      else
        armor_pierced[item] = true
      end
      --dr = MulDivRound(dr, Min(100, 50 + item.Condition), 100)
      local scaled = dmg * (100 - dr)
      local result = scaled / 100
      if 0 < scaled % 100 and armor_pierced[item] then
        result = result + 1
      end
      if record_breakdown then
        if armor_pierced[item] then
          record_breakdown[#record_breakdown + 1] = {
            name = T({
              191288543859,
              "<em><DisplayName></em> (Pierced)",
              item
            }),
            value = -dr
          }
        else
          record_breakdown[#record_breakdown + 1] = {
            name = T({
              516752639882,
              "<em><DisplayName></em>",
              item
            }),
            value = -dr
          }
        end
      end
      dmg = Min(dmg, result)
      armor_decay[item] = Min(item.Condition, degrade)
    end
  end)
  local armor_prevented = damage - dmg
  if HasPerk(self, "HoldPosition") and (g_Overwatch[self] or g_Pindown[self]) then
    local statPercent = CharacterEffectDefs.HoldPosition:ResolveValue("percentHealth")
    local percent_reduction = MulDivRound(self.Health, statPercent, 100)
    if record_breakdown then
      record_breakdown[#record_breakdown + 1] = {
        name = CharacterEffectDefs.HoldPosition.DisplayName,
        value = -percent_reduction
      }
    end
    dmg = Max(0, MulDivRound(dmg, 100 - percent_reduction, 100))
  end
  local armor = next(armor_decay)
  hit.armor = armor and armor.DisplayName
  hit.armor_prevented = armor_prevented
  hit.damage = dmg
  hit.armor_decay = armor_decay
  hit.armor_pen = armor_pierced
end