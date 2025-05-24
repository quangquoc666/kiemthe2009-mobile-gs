-- Mỗi khi Script được thực thi, ID tương ứng sẽ được lưu trong hệ thống, tại bảng 'Scripts'
-- Dạng đối tượng là dạng Class, được khởi tạo mặc định bởi hệ thống, và sau đó được lưu tại bảng
-- Khi sử dụng dạng Class, cần phải kế thừa Class được hệ thống sinh ra, và dòng lệnh bên dưới để làm điều đó
-- ID Script được khai báo ở file ScriptIndex.xml, thay thế giá trị '000000' bên dưới thành ID tương ứng

local SuGiaSuKien = Scripts[000001000]
local ChangeFactionCard = 2168 -- Thẻ đổi phái
-- ********************************* --
local CompensationIEven = {
	RecordKey = 1652023,						-- Khóa lưu trữ
	[1] = {
		ServerID = 1,
		Items = {
			{ItemID = 12220, Number = 1, Bound = 1, timeItem = -1}, -- thêm 11264 rương kim quang // 11264 -> rương hoàng kim
			
		},
		Faction = {
			--Thieu lam
			[1] = {
				{ItemID = 1390, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1391, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1392, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1393, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1394, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1395, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1396, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1397, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1398, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1399, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1403, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1401, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1400, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1402, Number = 1, Bound = 1, timeItem = -1},
				{ItemID = 1404, Number = 1, Bound = 1, timeItem = -1},
			},
		}
	},
	[2] = {
		ServerID = 2,
		Items = {
			{ItemID = 12220, Number = 1, Bound = 1, timeItem = -1}, -- thêm rương kim quang
			
		},
	},
	[3] = {
		ServerID = 3,
		Items = {
			{ItemID = 12220, Number = 1, Bound = 1, timeItem = -1}, -- thêm rương kim quang
			
		},
	},
	[4] = {
		ServerID = 4,
		Items = {
			{ItemID = 12220, Number = 1, Bound = 1, timeItem = -1}, -- thêm rương kim quang
			
		},
	},
	[5] = {
		ServerID = 5,
		Items = {
			{ItemID = 12220, Number = 1, Bound = 1, timeItem = -1}, -- thêm rương kim quang
			
		},
	},
	[6] = {
		ServerID = 6,
		Items = {
			{ItemID = 12220, Number = 1, Bound = 1, timeItem = -1}, -- thêm rương kim quang
			
		},
	},
}
local CompensationItems = {
	RecordKey = 100056,						-- Khóa lưu trữ
	[1] = {
		ServerID = 1,
		Items = {
			{ItemID = 2167, Number = 1, Bound = 1, timeItem = 10080}, -- thẻ đổi tên 7 ngày
			
		},
	},
	[2] = {
		ServerID = 2,
		Items = {
			{ItemID = 2167, Number = 1, Bound = 1, timeItem = 10080},	
			
		},
	},
	[3] = {
		ServerID = 3,
		Items = {
			{ItemID = 2167, Number = 1, Bound = 1, timeItem = 10080},	
			
		},
	},
	[4] = {
		ServerID = 4,
		Items = {
			{ItemID = 2167, Number = 1, Bound = 1, timeItem = 10080},	
			
		},
	},
	[5] = {
		ServerID = 5,
		Items = {
			{ItemID = 2167, Number = 1, Bound = 1, timeItem = 10080},	
			
						
		},
	},
	[6] = {
		ServerID = 6,
		Items = {
			{ItemID = 2167, Number = 1, Bound = 1, timeItem = 10080},	
			
		},
	},
}

-- ********************************* --



--****************************************************** --
--	Hàm này được gọi khi người chơi ấn vào NPC
--		scene: Scene - Bản đồ hiện tại
--		npc: NPC - NPC tương ứng
--		player: Player - NPC tương ứng
-- ****************************************************** --
function SuGiaSuKien:OnOpen(scene, npc, player, otherParams)

	-- ************************** --
	local serverID = player:GetZoneID()
	local record = Player.GetValueForeverRecore(player, CompensationItems.RecordKey)
	local record2 = Player.GetValueForeverRecore(player, CompensationIEven.RecordKey)
	-- ************************** --
	local dialog = GUI.CreateNPCDialog()
	dialog:AddText("Chào mừng bằng hữu đến với <color=green>Cổ kiếm </color>. Ta là <color=yellow>NPC Sứ Giả Sự Kiện</color>. Nếu bằng hữu gặp khó khăn gì, cần hỗ trợ hãy tới chỗ ta!")
	-- Nếu chưa nhận quà đền bù, hỗ trợ
	-- if record ~= 1 and CompensationItems[serverID] ~= nil then
	-- 	dialog:AddSelection(50000, "Nhận <color=green>Nhận thẻ đổi tên 7 Ngày</color>")
	-- end
	if record2 ~= 1 and CompensationIEven[serverID] ~= nil then
		dialog:AddSelection(60000, "Nhận <color=green>Nhận TB HKMP</color>")
	end
	if player:GetLevel() < 150 then
		dialog:AddSelection(60001, "Nhận <color=green>Nhận Level 150 </color>")
	end
	
	dialog:AddSelection(69000, "Nhận <color=green>Nhận TB HKMP</color>")
	--dialog:AddSelection(2, "Luyện Hóa Đồ")
	dialog:AddSelection(69003, "Nhận <color=green>Bí Kíp 120 - 150</color>")
	dialog:AddSelection(69004, "Nhận <color=green>Ngựa</color>")
	dialog:AddSelection(69005, "Nhận <color=green>Huyền Tinh 1-7</color>")
	dialog:AddSelection(69007, "Nhận <color=green>Nguyên Liệu</color>")
	dialog:AddSelection(69008, "Nhận <color=green>TL-HL</color>")
	dialog:AddSelection(69010, "Nhận <color=green>CTC Lễ bao</color>")
	dialog:AddSelection(69006, "Nhận <color=green>Mảnh VK HK</color>")
	dialog:AddSelection(69001, "Nhận <color=green>Tiền</color>")
	dialog:AddSelection(69002, "Nhận điểm <color=green>Danh Vọng</color>")
	
	dialog:AddSelection(50001, "Ta muốn đổi tên")
	dialog:AddSelection(30001, "Tiêu hủy vật phẩm")
	dialog:AddSelection(30002, "Ghép vật phẩm")
	--dialog:AddSelection(30003, "Vòng quay may mắn")
	--dialog:AddSelection(30004, "Sự kiện Giỗ Tổ Hùng Vương ")
	-- dialog:AddSelection(30005, "Vòng quay Tuần")
	dialog:AddSelection(30006, "Thay đổi môn phái")
	dialog:AddSelection(1000, "Kết thúc đối thoại")
	dialog:Show(npc, player)
	-- ************************** --

end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi ấn vào một trong số các chức năng cung cấp bởi NPC thông qua NPC Dialog
--		scene: Scene - Bản đồ hiện tại
--		npc: NPC - NPC tương ứng
--		player: Player - NPC tương ứng
--		selectionID: number - ID chức năng
-- ****************************************************** --
function SuGiaSuKien:OnSelection(scene, npc, player, selectionID, otherParams)

	-- ************************** --
	local dialog = GUI.CreateNPCDialog()
	if selectionID == 1000 then
		GUI.CloseDialog(player)
		return
	end
	if selectionID == 69006 then
		Player.AddItemLua(player, 10470, 5, -1, 1,0,-1)
		GUI.CloseDialog(player)
	end
	if selectionID == 69005 then
		Player.AddItemLua(player, 183, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 184, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 185, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 186, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 187, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 188, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 189, 1, -1, 1,0,-1)
		GUI.CloseDialog(player)
	end

	if selectionID == 69010 then
		Player.AddItemLua(player, 10798, 1000, -1, 1,0,-1)
		GUI.CloseDialog(player)
	end

	if selectionID == 69008 then
		Player.AddCurGatherPoint(player, 5000000)--Tinh luc
		Player.AddMakePoint(player, 5000000)--Hoat luc
		player:AddNotification("Bằng hữu nhận được <color=green>5 triệu</color> Tinh lực, Hoạt lực.");
		GUI.CloseDialog(player)
	end

	if selectionID == 69007 then
		Player.AddItemLua(player, 2190, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2191, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2192, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2193, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2200, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2201, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2202, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2203, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2210, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2211, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2212, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2213, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2220, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2221, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2222, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2223, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2240, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2241, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2242, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2243, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2250, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2251, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2252, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2253, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2260, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2261, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2262, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2263, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2310, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2311, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2312, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2313, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2320, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2321, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2322, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2323, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2330, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2331, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2332, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2333, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2340, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2341, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2342, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2343, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2350, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2351, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2352, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2353, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2360, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2361, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2362, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2363, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2370, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2371, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2372, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2373, 100, -1, 1,0,-1)

		Player.AddItemLua(player, 2380, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2381, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2382, 100, -1, 1,0,-1)
		Player.AddItemLua(player, 2383, 100, -1, 1,0,-1)
		SuGiaSuKien:ShowDialog(npc, player, "Bằng hữu đã nhận <color=green>nguyên liệu thành công</color>!")
		--GUI.CloseDialog(player)
	end


	if selectionID == 2 then
		GUI.OpenUI(player, "UIEquipLevelUp")
	end
	
	if selectionID == 30002 then
		-- Mở khung ghép vật phẩm
		GUI.OpenMergeItems(player)
		
		-- Đóng khung
		GUI.CloseDialog(player)
		return
	end
	-- ************************** --
	-- ************************** --
	if selectionID == 30001 then
		GUI.OpenRemoveItems(player)
		GUI.CloseDialog(player)
		return
	end
	if selectionID == 30003 then
		-- Mở khung vong quay
		GUI.OpenLuckyCircle(player)
		GUI.CloseDialog(player)
		return
		-- Đóng khung
	end
	if selectionID == 30004 then
		-- 
		Player.SpecialEventClick(npc, player)
		
		-- Đóng khung
		
		return
	end
	if selectionID == 50000 then
		local serverID = player:GetZoneID()
		local record = Player.GetValueForeverRecore(player, CompensationItems.RecordKey)
		
		-- Nếu đã nhận rồi
		if record == 1 then
			SuGiaSuKien:ShowDialog(npc, player, "Bằng hữu đã nhận <color=green>quà thành công</color>!")
			return
		end
		
		-- Toác
		if CompensationItems[serverID] == nil then
			SuGiaSuKien:ShowDialog(npc, player, "Bằng hữu không có quà để nhận!")
			return
		end
		
		-- Tổng số khoảng trống trong túi cần
		local totalSpacesNeed = 5--0
		
		-- Toác, tạm comment
		-- Tính tổng khoảng trống trong túi cần
		--for k, itemInfo in pairs(CompensationItems[serverID].Items) do
		--	totalSpacesNeed = totalSpacesNeed + Player.GetTotalSpacesNeedToTakeItem(itemInfo.ItemID, itemInfo.Number)
		--end
			-- Nếu không đủ khoảng trống
		if Player.HasFreeBagSpaces(player, totalSpacesNeed) == false then
			SuGiaSuKien:ShowDialog(npc, player, string.format("Bằng hữu cần sắp xếp tối thiểu <color=green>%d ô trống</color> trong túi đồ để nhận quà!", totalSpacesNeed))
			return
		end
		-- Đánh dấu đã nhận rồi
		Player.SetValueOfForeverRecore(player, CompensationItems.RecordKey, 1)
		
	
		
		-- Thêm vật phẩm tương ứng
		for k, itemInfo in pairs(CompensationItems[serverID].Items) do
				Player.AddItemLua(player, itemInfo.ItemID, itemInfo.Number, -1, itemInfo.Bound,0,itemInfo.timeItem)
			-- public static bool AddItemLua(Lua_Player player, int ItemID, int Number, int Series, int LockStatus, int enhanceLevel = 0, int ExpriestimeItem = -1)
		end		
		SuGiaSuKien:ShowDialog(npc, player, "Nhận <color=green>quà</color> thành công. Rất cảm ơn bằng hữu đã luôn đồng hành cùng <color=green>Cổ kiếm - Mobile</color>!")
		return
	end

	if selectionID == 69000 then
		--Thieu Lam
		if player:GetFactionID() == Global_FactionID.None then
			SuGiaSuKien:ShowDialog(npc, player, "Bằng hữu <color=red>Chưa gia nhập môn phái</color>!")
		end 
		if player:GetFactionID() == Global_FactionID.ShaoLin then
			Player.AddItemLua(player, 1390, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1391, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1392, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1393, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1394, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1395, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1396, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1397, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1398, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1399, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1400, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1401, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1402, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1403, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1404, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1404, 1, -1, 1,0,-1)
		end

		--Thiên vương
		if player:GetFactionID() == Global_FactionID.TianWang then
			Player.AddItemLua(player, 1410, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1411, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1412, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1413, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1414, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1415, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1416, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1417, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1418, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1419, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1408, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1409, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1406, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1405, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1418, 1, -1, 1,0,-1)
		end

		--Đường môn
		if player:GetFactionID() == Global_FactionID.TangMen then
			Player.AddItemLua(player, 1475, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1476, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1477, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1477, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1478, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1479, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1460, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1461, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1462, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1463, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1464, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1470, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1471, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1472, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1473, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1474, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1465, 1, -1, 1,0,-1)
		end

		--Ngũ độc
		if player:GetFactionID() == Global_FactionID.WuDu then
			Player.AddItemLua(player, 1450, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1451, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1452, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1452, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1453, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1454, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1445, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1446, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1447, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1448, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1449, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1455, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1456, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1457, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1458, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1459, 1, -1, 1,0,-1)
		end

		--Nga my
		if player:GetFactionID() == Global_FactionID.EMei then
			Player.AddItemLua(player, 1420, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1422, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1422, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1423, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1424, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1425, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1426, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1427, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1428, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1429, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1430, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1431, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1432, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1433, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1434, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1434, 1, -1, 1,0,-1)
		end

		--Thúy yên
		if player:GetFactionID() == Global_FactionID.CuiYan then
			Player.AddItemLua(player, 1435, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1436, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1437, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1438, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1439, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1440, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1441, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1442, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1443, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1444, 1, -1, 1,0,-1)
		end

		--Cái bang
		if player:GetFactionID() == Global_FactionID.GaiBang then
			Player.AddItemLua(player, 1480, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1481, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1482, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1483, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1484, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1485, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1486, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1487, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1488, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1489, 1, -1, 1,0,-1)
		end

		--Thiên nhẫn
		if player:GetFactionID() == Global_FactionID.TianRen then
			Player.AddItemLua(player, 1495, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1496, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1497, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1498, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1499, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1490, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1491, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1492, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1493, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1494, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1500, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1501, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1502, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1503, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1504, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1502, 1, -1, 1,0,-1)
		end

		--Võ đang
		if player:GetFactionID() == Global_FactionID.WuDang then
			Player.AddItemLua(player, 1510, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1511, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1512, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1513, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1514, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1505, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1506, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1507, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1507, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1508, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1509, 1, -1, 1,0,-1)
		end
		
		--Côn lôn
		if player:GetFactionID() == Global_FactionID.KunLun then
			Player.AddItemLua(player, 1515, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1516, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1517, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1518, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1519, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1519, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1520, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1521, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1522, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1523, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1524, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1525, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1526, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1527, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1528, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1529, 1, -1, 1,0,-1)
		end

		--HoaSon
		if player:GetFactionID() == Global_FactionID.HoaSon then
			Player.AddItemLua(player, 1583, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1584, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1585, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1586, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1587, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1588, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1589, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1590, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1591, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1592, 1, -1, 1,0,-1)
		end

		--MinhGiao
		if player:GetFactionID() == Global_FactionID.MinhGiao then
			
		end

		--BaDao
		if player:GetFactionID() == Global_FactionID.BaDao then
			
		end

		--TieuDao
		if player:GetFactionID() == Global_FactionID.TieuDao then
			
		end
		GUI.CloseDialog(player)
	end
	
	if selectionID == 69001 then
		Player.AddMoney(player, 9999999, 1)
		Player.AddMoney(player, 9999999, 2)
		Player.AddMoney(player, 9999999, 3)
		Player.AddMoney(player, 9999999, 4)
		GUI.CloseDialog(player)
	end

	if selectionID == 69002 then
		Player.AddRetupeValue(player,101,10000)
		Player.AddRetupeValue(player,102,10000)--300 + player:GetFactionID()

		Player.AddRetupeValue(player,201,10000)
		Player.AddRetupeValue(player,202,10000)
		Player.AddRetupeValue(player,203,10000)

		Player.AddRetupeValue(player,300 + player:GetFactionID(),10000)
		Player.AddRetupeValue(player,401,10000)
		Player.AddRetupeValue(player,402,10000)
		

		Player.AddRetupeValue(player,501,10000)
		Player.AddRetupeValue(player,503,10000)
		
		Player.AddRetupeValue(player,602,10000)
		
		Player.AddRetupeValue(player,1101,10000)
		

		GUI.CloseDialog(player)
	end

	--Nhận bí kíp 120-150 test
	if selectionID == 69003 then
		if player:GetFactionID() == Global_FactionID.None then
			SuGiaSuKien:ShowDialog(npc, player, "Bằng hữu <color=red>Chưa gia nhập môn phái</color>!")
		end 

		--Thiếu Lâm
		if player:GetFactionID() == Global_FactionID.ShaoLin then
			Player.AddItemLua(player, 8437, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8438, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8439, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8519, 1, -1, 1,0,-1)--120
		end

		--Thiên vương
		if player:GetFactionID() == Global_FactionID.TianWang then
			Player.AddItemLua(player, 8440, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8441, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8442, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8520, 1, -1, 1,0,-1)
		end

		--Đường môn
		if player:GetFactionID() == Global_FactionID.TangMen then
			

			Player.AddItemLua(player, 8445, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8446, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8447, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8463, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8522, 1, -1, 1,0,-1)
		end

		--Ngũ độc
		if player:GetFactionID() == Global_FactionID.WuDu then
			Player.AddItemLua(player, 8443, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8444, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8521, 1, -1, 1,0,-1)--Hap tinh yem 120
			
		end

		--Nga my
		if player:GetFactionID() == Global_FactionID.EMei then
			Player.AddItemLua(player, 8448, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8449, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8450, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8523, 1, -1, 1,0,-1)
		end

		--Thúy yên
		if player:GetFactionID() == Global_FactionID.CuiYan then
			Player.AddItemLua(player, 8451, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8452, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8524, 1, -1, 1,0,-1)
		end

		--Cái bang
		if player:GetFactionID() == Global_FactionID.GaiBang then
			Player.AddItemLua(player, 8453, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8454, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8525, 1, -1, 1,0,-1)
		end

		--Thiên nhẫn
		if player:GetFactionID() == Global_FactionID.TianRen then
			Player.AddItemLua(player, 8455, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8456, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8526, 1, -1, 1,0,-1)
		end

		--Võ đang
		if player:GetFactionID() == Global_FactionID.WuDang then
			Player.AddItemLua(player, 8457, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8458, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8527, 1, -1, 1,0,-1)
		end
		
		--Côn lôn
		if player:GetFactionID() == Global_FactionID.KunLun then
			Player.AddItemLua(player, 8459, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8460, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 8528, 1, -1, 1,0,-1)
		end

		--Hoa Sơn
		if player:GetFactionID() == Global_FactionID.HoaSon then
			Player.AddItemLua(player, 8529, 1, -1, 1,0,-1)--Hao nhien
			Player.AddItemLua(player, 8530, 1, -1, 1,0,-1)--Tu Ha
			Player.AddItemLua(player, 8462, 1, -1, 1,0,-1)--Than quang
			Player.AddItemLua(player, 8461, 1, -1, 1,0,-1)--Cuu kiem quy nhat
			
		end

		GUI.CloseDialog(player)
	end

	if selectionID == 69004 then
		Player.AddItemLua(player, 8160, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 8140, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 8180, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 8220, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 84221, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 8150, 1, -1, 1,0,-1)
		-- Player.AddItemLua(player, 8170, 1, -1, 1,0,-1)
		Player.AddItemLua(player, 8270, 1, -1, 1,0,-1)
		GUI.CloseDialog(player)
	end

	if selectionID == 60000 then
		local serverID = player:GetZoneID()
		local record = Player.GetValueForeverRecore(player, CompensationIEven.RecordKey)
		
		if player:GetFactionID() == Global_FactionID.None then
			SuGiaSuKien:ShowDialog(npc, player, "Bằng hữu <color=red>Chưa gia nhập môn phái</color>!")
		end 
		-- Nếu đã nhận rồi
		if record == 1 then
			SuGiaSuKien:ShowDialog(npc, player, "Bằng hữu đã nhận <color=green>quà thành công</color>!")
			return
		end
		
		-- Toác
		if CompensationIEven[serverID] == nil then
			SuGiaSuKien:ShowDialog(npc, player, "Bằng hữu không có quà để nhận!")
			return
		end
		
		-- Tổng số khoảng trống trong túi cần
		local totalSpacesNeed = 15--0
		
		-- Toác, tạm comment
		-- Tính tổng khoảng trống trong túi cần
		--for k, itemInfo in pairs(CompensationIEven[serverID].Items) do
		--	totalSpacesNeed = totalSpacesNeed + Player.GetTotalSpacesNeedToTakeItem(itemInfo.ItemID, itemInfo.Number)
		--end
			-- Nếu không đủ khoảng trống
		if Player.HasFreeBagSpaces(player, totalSpacesNeed) == false then
			SuGiaSuKien:ShowDialog(npc, player, string.format("Bằng hữu cần sắp xếp tối thiểu <color=green>%d ô trống</color> trong túi đồ để nhận quà!", totalSpacesNeed))
			return
		end
		-- Đánh dấu đã nhận rồi
		Player.SetValueOfForeverRecore(player, CompensationIEven.RecordKey, 1)
		
		
		if player:GetFactionID() == Global_FactionID.ShaoLin then
			Player.AddItemLua(player, 1390, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1391, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1392, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1393, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1394, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1395, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1396, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1397, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1398, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1399, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1400, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1401, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1402, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1403, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1404, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1404, 1, -1, 1,0,-1)
		end

		--Thiên vương
		if player:GetFactionID() == Global_FactionID.TianWang then
			Player.AddItemLua(player, 1410, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1411, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1412, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1413, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1414, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1415, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1416, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1417, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1418, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1419, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1408, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1409, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1406, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1405, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1418, 1, -1, 1,0,-1)
		end

		--Đường môn
		if player:GetFactionID() == Global_FactionID.TangMen then
			Player.AddItemLua(player, 1475, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1476, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1477, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1477, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1478, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1479, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1460, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1461, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1462, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1463, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1464, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1470, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1471, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1472, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1473, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1474, 1, -1, 1,0,-1)
		end

		--Ngũ độc
		if player:GetFactionID() == Global_FactionID.WuDu then
			Player.AddItemLua(player, 1450, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1451, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1452, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1452, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1453, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1454, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1445, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1446, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1447, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1448, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1449, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1455, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1456, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1457, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1458, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1459, 1, -1, 1,0,-1)
		end

		--Nga my
		if player:GetFactionID() == Global_FactionID.EMei then
			Player.AddItemLua(player, 1420, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1422, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1422, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1423, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1424, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1425, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1426, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1427, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1428, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1429, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1430, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1431, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1432, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1433, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1434, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1434, 1, -1, 1,0,-1)
		end

		--Thúy yên
		if player:GetFactionID() == Global_FactionID.CuiYan then
			Player.AddItemLua(player, 1435, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1436, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1437, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1438, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1439, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1440, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1441, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1442, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1443, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1444, 1, -1, 1,0,-1)
		end

		--Cái bang
		if player:GetFactionID() == Global_FactionID.GaiBang then
			Player.AddItemLua(player, 1480, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1481, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1482, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1483, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1484, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1485, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1486, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1487, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1488, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1489, 1, -1, 1,0,-1)
		end

		--Thiên nhẫn
		if player:GetFactionID() == Global_FactionID.TianRen then
			Player.AddItemLua(player, 1495, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1496, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1497, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1498, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1499, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1490, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1491, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1492, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1493, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1494, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1500, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1501, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1502, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1503, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1504, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1502, 1, -1, 1,0,-1)
		end

		--Võ đang
		if player:GetFactionID() == Global_FactionID.WuDang then
			Player.AddItemLua(player, 1510, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1511, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1512, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1513, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1514, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1505, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1506, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1507, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1507, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1508, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1509, 1, -1, 1,0,-1)
		end
		
		--Côn lôn
		if player:GetFactionID() == Global_FactionID.KunLun then
			Player.AddItemLua(player, 1515, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1516, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1517, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1518, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1519, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1519, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1520, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1521, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1522, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1523, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1524, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1525, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1526, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1527, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1528, 1, -1, 1,0,-1)
			Player.AddItemLua(player, 1529, 1, -1, 1,0,-1)
		end

		--HoaSon
		if player:GetFactionID() == Global_FactionID.HoaSon then
			
		end

		--MinhGiao
		if player:GetFactionID() == Global_FactionID.MinhGiao then
			
		end

		--BaDao
		if player:GetFactionID() == Global_FactionID.BaDao then
			
		end

		--TieuDao
		if player:GetFactionID() == Global_FactionID.TieuDao then
			
		end

		
		
		-- -- Thêm vật phẩm tương ứng
		-- for k, itemInfo in pairs(CompensationIEven[serverID].Items) do
		-- 		Player.AddItemLua(player, itemInfo.ItemID, itemInfo.Number, -1, itemInfo.Bound,0,itemInfo.timeItem)
		-- 	-- public static bool AddItemLua(Lua_Player player, int ItemID, int Number, int Series, int LockStatus, int enhanceLevel = 0, int ExpriestimeItem = -1)
		-- end		
		SuGiaSuKien:ShowDialog(npc, player, "Nhận <color=green>quà</color> thành công. Rất cảm ơn bằng hữu đã luôn đồng hành cùng <color=green>Cổ kiếm - Mobile</color>!")
		return
	end

	if selectionID == 30005 then
		GUI.OpenTurnPlate(player)
		GUI.CloseDialog(player)
	end
	if selectionID == 30006 then
		if (Player.IsHaveEquipBody(player)) ==false then
			-- Nếu không có thẻ đổi phái
			if Player.CountItemInBag(player, ChangeFactionCard) <= 0 then
				SuGiaSuKien:ShowDialog(npc, player,
					"Chức năng này yêu cầu <color=yellow>[Thẻ Đổi Môn Phái]</color>. Khi nào có hãy đến tìm ta.")
				return
				-- Nếu có chiến đội tham gia Võ lâm liên đấu, và đang trong thời gian diễn ra Võ lâm liên đấu thì không thể đổi phái
			elseif EventManager.TeamBattle_IsBattleTimeToday() == true and EventManager.TeamBattle_IsRegistered(player) == true then
				SuGiaSuKien: ShowDialog(npc, player, "Trong thời gian nhậy cảm không thể đổi phái ngươi hay quay lại sau.")
				return
			end

			-- Chọn môn phái
			local dialog = GUI.CreateNPCDialog()
			dialog:AddText("Người muốn đổi qua môn phái nào?")
			for key, value in pairs(Global_FactionName) do
				if key > 0 and player:GetFactionID() ~= key then
					dialog:AddSelection(100 + key, value)
				end
			end
			dialog:Show(npc, player)
			return
		else
			SuGiaSuKien:ShowDialog(npc, player, "Ngươi phải tháo hết đồ xuống mới đổi được phái")
		end

	end
	if selectionID == 50001 then
		GUI.OpenChangeName(player)
		GUI.CloseDialog(player)
		return
	end
	if selectionID == 60001 then
		player:SetLevel(150)
		SuGiaSuKien:ShowDialog(npc, player, "Thiết lập cấp độ 150 thành công.")
			return
	end
	if selectionID >= 101 and selectionID <= 120 then
		-- Nếu không có thẻ đổi phái
		if Player.CountItemInBag(player, ChangeFactionCard) <= 0 then
		SuGiaSuKien:ShowDialog(npc, player,
				"Chức năng này yêu cầu <color=yellow>[Thẻ Đổi Môn Phái]</color>. Khi nào có hãy đến tìm ta.")
			return
			-- Nếu có chiến đội tham gia Võ lâm liên đấu, và đang trong thời gian diễn ra Võ lâm liên đấu thì không thể đổi phái
		elseif EventManager.TeamBattle_IsBattleTimeToday() == true and EventManager.TeamBattle_IsRegistered(player) == true then
		SuGiaSuKien:ShowDialog(npc, player, "Trong thời gian nhậy cảm không thể đổi phái ngươi hay quay lại sau.")
			return
		end

		-- ID môn phái tương ứng
		local factionID = selectionID - 100
		-- Nếu giới tính không phù hợp
		if player:GetSex() == 0 and factionID == Global_FactionID.EMei then
		SuGiaSuKien:ShowDialog(npc, player,
				"Thật đáng tiếc, chưởng môn phái <color=green>Nga My</color> không tiếp nhận <color=green>nam đệ tử</color>, ngươi hãy chọn môn phái khác.")
			return
		elseif player:GetSex() == 0 and factionID == Global_FactionID.CuiYan then
		SuGiaSuKien:ShowDialog(npc, player, 
				"Thật đáng tiếc, phương trượng trụ trì phái <color=green>Thúy Yên</color> không tiếp nhận <color=green>nam đệ tử</color>, ngươi hãy chọn môn phái khác.")
			return
		elseif player:GetSex() == 1 and factionID == Global_FactionID.ShaoLin then
		SuGiaSuKien:ShowDialog(npc, player,
				"Thật đáng tiếc, phương trượng trụ trì phái <color=green>Thiếu Lâm</color> không tiếp nhận <color=green>nữ đệ tử</color>, ngươi hãy chọn môn phái khác.")
			return
		end

		-- Xóa thẻ đổi phái
		Player.RemoveItem(player, ChangeFactionCard, 1)

		-- Thực hiện tẩy tiềm năng
		player:UnAssignRemainPotentialPoints()
	
		-- Thực hiện đổi sang môn phái tương ứng
		SuGiaSuKien:JoinFaction(scene, npc, player, factionID)

		return
	end


	-- ************************** --
end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi chọn một trong các vật phẩm, và ấn nút Xác nhận cung cấp bởi NPC thông qua NPC Dialog
--		scene: Scene - Bản đồ hiện tại
--		npc: NPC - NPC tương ứng
--		player: Player - NPC tương ứng
--		itemID: number - ID vật phẩm được chọn
-- ****************************************************** --
function SuGiaSuKien:OnItemSelected(scene, npc, player, itemID,otherParams)

	-- ************************** --

	-- ************************** --

end


function SuGiaSuKien:ShowDialog(npc, player, text)

	-- ************************** --
	local dialog = GUI.CreateNPCDialog()
	dialog:AddText(text)
	dialog:Show(npc, player)
	-- ************************** --
	
end
function SuGiaSuKien:JoinFaction(scene, npc, player, factionID)

	-- ************************** --
	local ret = player:JoinFaction(factionID)
	-- ************************** --
	if ret == -1 then
	SuGiaSuKien:ShowDialog(npc, player, "Người chơi không tồn tại!")
		return ret
	elseif ret == 1 then
	SuGiaSuKien:ShowDialog(npc, player,
			"Tẩy tủy thành công! Môn phái cùng toàn bộ điểm tiềm năng và kỹ năng của ngươi đã được phân phối lại")
		return
	end
	-- ************************** --

end

