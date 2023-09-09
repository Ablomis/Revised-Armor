function OnMsg.ApplyModOptions()
    RevisedArmorConfigValues.ArmorDegradationScale = tonumber(CurrentModOptions['RevisedArmorDegradationScale'])
    RevisedArmorConfigValues.BaseDamageReduction = tonumber(CurrentModOptions['RevisedBaseDamageReduction'])
    RevisedArmorConfigValues.WeavePaddingBonus = tonumber(CurrentModOptions['RevisedWeavePaddingBonus'])
    RevisedArmorConfigValues.NonPenDamageReduction = tonumber(CurrentModOptions['RevisedNonPenDamageReduction'])
    RevisedArmorConfigValues.PenDamageReduction = tonumber(CurrentModOptions['RevisedPenDamageReduction'])
end