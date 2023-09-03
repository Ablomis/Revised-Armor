function UnitProperties:GetInventoryMaxSlots()
    local inventorySlots = 4
    self:ForEachItem("Armor", function(item, slot)
        if item.InventorySlots then
            inventorySlots = inventorySlots + item.InventorySlots
        end
    end)
    return IsMerc(self) and inventorySlots or self.max_dead_slot_tiles 
  end

  local GetTileImage = function(ctrl, tile)
    local enabled = ctrl:GetEnabled()
    local slot = ctrl.parent:GetInventorySlotCtrl()
    return enabled and (tile and "UI/Inventory/T_Backpack_Slot_Small_Empty.tga" or "UI/Inventory/T_Backpack_Slot_Small.tga") or "UI/Inventory/T_Backpack_Slot_Small_Empty.tga"
end

local tile_size = 90
local tile_size_rollover = 110

TileConfig = {
    Type = "Small",
    Size = "Small",
}

function XInventoryTile:Init()
    local k =1
    local emptyImage = "UI/Inventory/T_Backpack_Slot_Small_Empty.tga"
    local hoverImage = "UI/Inventory/T_Backpack_Slot_Small_Hover.tga"
    if TileConfig.Size == "Large" then
        k = 2
        emptyImage = "UI/Inventory/T_Backpack_Slot_Large_Empty.tga"
        hoverImage = "UI/Inventory/T_Backpack_Slot_Large_Hover.tga"
    end
    local image = XImage:new({
      MinWidth = tile_size * k,
      MaxWidth = tile_size * k,
      MinHeight = tile_size * k,
      MaxHeight = tile_size * k,
      Id = "idBackImage",
      Image = emptyImage,
      ImageColor = 4291018156
    }, self)
    if self.slot_image then
      local imgslot = XImage:new({
        MinWidth = tile_size*k,
        MaxWidth = tile_size*k,
        MinHeight = tile_size*k,
        MaxHeight = tile_size*k,
        Dock = "box",
        Id = "idEqSlotImage",
        ImageFit = "width"
      }, self)
      imgslot:SetImage(self.slot_image)
      image:SetImage("UI/Inventory/T_Backpack_Slot_Small.tga")
      image:SetImageColor(RGB(255, 255, 255))
    end
    local rollover_image = XImage:new({
      MinWidth = tile_size_rollover*k,
      MaxWidth = tile_size_rollover*k,
      MinHeight = tile_size_rollover*k,
      MaxHeight = tile_size_rollover*k,
      Id = "idRollover",
      Image = hoverImage,
      ImageColor = 4291018156,
      Visible = false
    }, self)
    rollover_image:SetVisible(false)
end

function XInventorySlot:Setslot_name(slot_name)
    local context = self:GetContext()
    if not context then
      return
    end
    self.tiles = {}
    TileConfig.Type = "Small"
    self.slot_name = slot_name
    local slot_data = context:GetSlotData(slot_name)
    local width, height, last_row_width = context:GetSlotDataDim(slot_name)
    if context.unitdatadef_id and (slot_name == "Inventory") then
        for i = 1, width do self.tiles[i] = {} end
        TileConfig.Type  = "Shoulder"
        for i = 1, 2 do
                local tile = self:SpawnTile(slot_name, i, 1)
                if tile then
                  tile:SetContext(context)
                  tile:SetGridX(i)
                  tile:SetGridY(1)
                  tile.idBackImage:SetTransparency(self.image_transparency)
                  if slot_data.enabled == false then
                    tile:SetEnabled(false)
                  end
                  tile.Type = TileConfig.Type
                  self.tiles[i][1] = tile
                  --[[tile.idBackImage.Image = "UI/Inventory/T_Backpack_Slot_Large_Empty.tga"
                  tile.idBackImage.MinWidth = 220
                  tile.idBackImage.MaxWidth = 220
                  for k,v in pairs(tile.idBackImage) do
                    print(k)
                  end
                  print(tile.idBackImage.Image)]]--
                end
        end   
        TileConfig.Type = "Small"
        for i = 1, width do
          for j = 2, height+1 do
            if j ~= height+1 or i <= last_row_width then
              local tile = self:SpawnTile(slot_name, i, j)
              if tile then
                tile:SetContext(context)
                tile:SetGridX(i)
                tile:SetGridY(j)
                tile.idBackImage:SetTransparency(self.image_transparency)
                if slot_data.enabled == false then
                  tile:SetEnabled(false)
                end
                tile.Type = TileConfig.Type
                self.tiles[i][j] = tile
              end
            end
          end
        end
    else
        for i = 1, width do
            TileConfig.Type = "Small"
            self.tiles[i] = {}
            for j = 1, height do
            if j ~= height or i <= last_row_width then
                local tile = self:SpawnTile(slot_name, i, j)
                if tile then
                tile:SetContext(context)
                tile:SetGridX(i)
                tile:SetGridY(j)
                tile.idBackImage:SetTransparency(self.image_transparency)
                if slot_data.enabled == false then
                    tile:SetEnabled(false)
                end
                tile.Type = TileConfig.Type
                self.tiles[i][j] = tile
                end
            end
            end
        end
    end
    self.item_windows = {}
    self.rollover_windows = {}
    self:InitialSpawnItems()
  end

  function XInventoryTile:OnDropEnter(drag_win, pt, drag_source_win)
    local drag_item = InventoryDragItem
    local mouse_text

    local fits, reason = ItemFitsTile(drag_item, self)
    if not fits then mouse_text = reason
    else
        local slot = self:GetInventorySlotCtrl()
        mouse_text = InventoryGetMoveIsInvalidReason(slot.context, InventoryStartDragContext)
        local wnd, under_item = slot:FindItemWnd(pt)
        if under_item == drag_item then
            under_item = false
        end
        local is_reload = IsReload(drag_item, under_item)
        local ap_cost, unit_ap, action_name = GetAPCostAndUnit(drag_item, InventoryStartDragContext, InventoryStartDragSlotName, slot:GetContext(), slot.slot_name, under_item, is_reload)
    end

    if not mouse_text then
      mouse_text = action_name or ""
      if InventoryIsCombatMode() and ap_cost and 0 < ap_cost then
        mouse_text = InventoryFormatAPMouseText(unit_ap, ap_cost, mouse_text)
      end
    end
    InventoryShowMouseText(true, mouse_text)
    HighlightDropSlot(self, true, pt, drag_win)
    HighlightAPCost(InventoryDragItem, true, self)
  end

  function XInventorySlot:DragDrop_MoveItem(pt, target, check_only)
    if not InventoryDragItem then
      return "no item being dragged"
    end
    if not (target and InventoryIsValidTargetForUnit(self.context) and InventoryIsValidTargetForUnit(InventoryStartDragContext)) or not InventoryIsValidGiveDistance(self.context, InventoryStartDragContext) then
      return "not valid target"
    end
    local item = InventoryDragItem
    local dest_slot = target.slot_name
    local _, pt = self:GetNearestTileInDropSlot(pt)
    local _, dx, dy = target:FindTile(pt)
    if not dx then
      return "no target tile"
    end
    local tile = target.tiles[dx][dy]

    local fits, reason = ItemFitsTile(item, tile)
    if not fits then return reason end

    local ssx, ssy, sdx = point_unpack(InventoryDragItemPos)
    if item.LargeItem then
      dx = dx - sdx
      if IsEquipSlot(dest_slot) then
        dx = 1
      end
    end
    local dest_container = target:GetContext()
    local src_container = InventoryStartDragContext
    local under_item = dest_container:GetItemInSlot(dest_slot, nil, dx, dy)
    local src_slot_name = InventoryStartDragSlotName
    local use_alternative_swap_pos = IsEquipSlot(dest_slot) and not IsEquipSlot(src_slot_name) and not not under_item
    local args = {
      item = item,
      src_container = src_container,
      src_slot = src_slot_name,
      dest_container = dest_container,
      dest_slot = dest_slot,
      dest_x = dx,
      dest_y = dy,
      check_only = check_only,
      exec_locally = false,
      alternative_swap_pos = use_alternative_swap_pos
    }
    local r1, r2, sync_unit = MoveItem(args)
    if r1 or not check_only then
      PlayFXOnMoveItemResult(r1, item, dest_slot, sync_unit)
    end
    if not r1 and not check_only and (not r2 or r2 ~= "no change") then
      self:Gossip(item, src_container, target, ssx, ssy, dx, dy)
    end
    return r1, r2
  end

function ItemFitsTile(item, tile)
    if tile.Type then
        if tile.Type == "Shoulder" then
            if not IsKindOfClasses(item, "AssualtRifle", "SniperRifle", "MachineGun", "Shotgun") then
                return false, "Doesn't fit here"
            end
        elseif tile.Type == "Small" then
            if IsKindOfClasses(item, "AssualtRifle", "SniperRifle", "MachineGun", "Shotgun", "SMG") then
                return false, "Doesn't fit here"
            end
        end
    end
    return true
end