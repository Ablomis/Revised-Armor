function OnMsg.ApplyModOptions()
    RevisedArmorConfigValues.ArmorDegradationScale = CurrentModOptions['RevisedArmorDegradationScale']
    RevisedArmorConfigValues.BaseDamageReduction = CurrentModOptions['RevisedBaseDamageReduction']
    RevisedArmorConfigValues.WeavePaddingBonus = CurrentModOptions['RevisedWeavePaddingBonus']
    RevisedArmorConfigValues.NonPenDamageReduction = CurrentModOptions['RevisedNonPenDamageReduction']
    RevisedArmorConfigValues.PenDamageReduction = CurrentModOptions['RevisedPenDamageReduction']
end