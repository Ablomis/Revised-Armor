function OnMsg.EnterSector()
    for _, unit in pairs(g_Units) do
        unit.auto_face = false
    end
end
