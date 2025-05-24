-- Mỗi khi Script được thực thi, ID tương ứng sẽ được lưu trong hệ thống, tại bảng 'Scripts'
-- Dạng đối tượng là dạng Class, được khởi tạo mặc định bởi hệ thống, và sau đó được lưu tại bảng
-- Khi sử dụng dạng Class, cần phải kế thừa Class được hệ thống sinh ra, và dòng lệnh bên dưới để làm điều đó
-- ID Script được khai báo ở file ScriptIndex.xml, thay thế giá trị '000021' bên dưới thành ID tương ứng
local TayTuyDaiSu = Scripts[000156]
local Record3 = 000156
local Record4 = 2168
-- ************************** --
local ChangeFactionCard = 2168					-- Thẻ đổi phái
-- ************************** --
local SetTanThu100CoNgua ={
	[1] = {
		ItemID1 = 11607,--liên			--THiếu Lâm Kim
		ItemID2 = 12861,--nhẫn
		ItemID3 = 12007,--bội
		ItemID4 = 6362,--giày
		ItemID5 = 6884,--tay
		ItemID6 = 5670,--lưng
		ItemID7 = 5326,--ao
		ItemID8 = 3978,--phù
		ItemID9 = 9239,--mũ
		
		ItemID10 = 10220,--vk 1
		ItemID11 = 10230,--vk2
		ItemID12 = 3256,--mật tịch trung
		ItemID13 = 3257,--mật tịch trung

		ItemID14 = 11607,--liên
		ItemID15 = 12861,--nhẫn
		ItemID16 = 12017,--hương nang
		ItemID17 = 6372,--giày
		ItemID18 = 6894,--tay
		ItemID19 = 5680,--lưng
		ItemID20 = 4420,--ao
		ItemID21 = 3978,--phù
		ItemID22 = 9249,--mũ
		ItemID23 = 3476,--ngựa 1
		ItemID24 = 3476,--ngựa 2
		ItemID25 = 3281,--mật tịch cao
		ItemID26 = 3280,--mật tịch cao
	},
	[2] = {
		ItemID1 = 11607,			--Thiên Vương Kim
		ItemID2 = 12861,--nhẫn
		ItemID3 = 12007,--bội
		ItemID4 = 6362,--giày
		ItemID5 = 6884,--tay
		ItemID6 = 5670,--lưng
		ItemID7 = 5326,--ao
		ItemID8 = 3978,--phù
		ItemID9 = 9239,--mũ
		
		ItemID10 = 10240,--vk 3
		ItemID11 = 10250,--vk 4		
		ItemID12 = 3258,--mật tịch trung
		ItemID13 = 3259,--mật tịch trung

		ItemID14 = 11607,
		ItemID15 = 12861,
		ItemID16 = 12017,--hương nang
		ItemID17 = 6372,--giày
		ItemID18 = 6894,--tay
		ItemID19 = 5680,--lưng
		ItemID20 = 4420,--ao
		ItemID21 = 3978,--phù
		ItemID22 = 9249,--mũ
		ItemID23 = 3476,--ngựa 1
		ItemID24 = 3476,--ngựa 2
		ItemID25 = 3282,--mật tịch cao
		ItemID26 = 3283,--mật tịch cao
	},
	[3] = {
		ItemID1 = 11617,--liên			--Đường Môn  Mộc
		ItemID2 = 12871,--nhẫn
		ItemID3 = 12027,--bội
		ItemID4 = 6382,--giày
		ItemID5 = 6904,--tay
		ItemID6 = 5690,--lưng
		ItemID7 = 4470,--ao
		ItemID8 = 3988,--phù
		ItemID9 = 9279,--nón
		
		ItemID10 = 12657,
		ItemID11 = 12667,
		ItemID12 = 3260,--mật tịch trung
		ItemID13 = 3261,--mật tịch trung
		
		ItemID16 = 11617,--liên
		ItemID17 = 12871,--nhẫn
		ItemID18 = 12037,--hương nang
		ItemID19 = 6392,--giày
		ItemID20 = 6914,--tay
		ItemID21 = 5700,--lưng
		ItemID22 = 4480,--ao
		ItemID23 = 3988,--phù
		ItemID24 = 9289,--nón
		ItemID25 = 3476,--ngựa 1
		ItemID26 = 3476,--ngựa 2
		ItemID27 = 3284,--mật tịch cao
		ItemID28 = 3285,--mật tịch cao		
	},
	[4] = {
		ItemID1 = 11617,--liên			--Ngu Độc  Mộc
		ItemID2 = 12871,--nhẫn
		ItemID3 = 12027,--bội
		ItemID4 = 6382,--giày
		ItemID5 = 6904,--tay
		ItemID6 = 5690,--lưng
		ItemID7 = 4470,--ao
		ItemID8 = 3988,--phù
		ItemID9 = 9279,--nón
		
		ItemID10 = 10260,	
		ItemID11 = 10270,
		ItemID12 = 3262,--mật tịch trung
		ItemID13 = 3263,--mật tịch trung
		
		ItemID16 = 11617,--liên
		ItemID17 = 12871,--nhẫn
		ItemID18 = 12037,--hương nang
		ItemID19 = 6392,--giày
		ItemID20 = 6914,--tay
		ItemID21 = 5700,--lưng
		ItemID22 = 4480,--ao
		ItemID23 = 3988,--phù
		ItemID24 = 9289,--nón
		ItemID25 = 3476,--ngựa 1
		ItemID26 = 3476,--ngựa 2
		ItemID27 = 3286,--mật tịch cao
		ItemID28 = 3287,--mật tịch cao		
	},
	[5] = {
		ItemID1 = 11627,			--Nga My  thủy
		ItemID2 = 12881,--nhẫn
		ItemID3 = 12047,--bội
		ItemID4 = 6402,--giày
		ItemID5 = 6924,--tay
		ItemID6 = 5710,--lưng
		ItemID7 = 4510,--áo
		ItemID8 = 3998,--phù
		ItemID9 = 9319,--nón
		
		ItemID10 = 10300,
		ItemID11 = 10310,
		ItemID12 = 3264,--mật tịch trung
		ItemID13 = 3265,--mật tịch trung
		
		ItemID16 = 11627,--liên
		ItemID17 = 12881,--nhẫn
		ItemID18 = 12057,--bội
		ItemID19 = 6412,--giày
		ItemID20 = 6934,--tay
		ItemID21 = 5720,--lưng
		ItemID22 = 4500,--áo
		ItemID23 = 3998,--phù
		ItemID24 = 9529,--nón
		ItemID25 = 3476,
		ItemID26 = 3476,
		ItemID27 = 3288,--mật tịch cao
		ItemID28 = 3289,--mật tịch cao
		},
	[6] = {
		ItemID1 = 11627,			--Thúy Yên  thủy
		ItemID2 = 12881,--nhẫn
		ItemID3 = 12047,--bội
		ItemID4 = 6402,--giày
		ItemID5 = 6924,--tay
		ItemID6 = 5710,--lưng
		ItemID7 = 4510,--áo
		ItemID8 = 3998,--phù
		ItemID9 = 9319,--nón

		ItemID10 = 10280,
		ItemID11 = 10310,
		ItemID12 = 3266,--mật tịch trung
		ItemID13 = 3267,--mật tịch trung
		
		ItemID16 = 11627,--liên
		ItemID17 = 12881,--nhẫn
		ItemID18 = 12057,--bội
		ItemID19 = 6412,--giày
		ItemID20 = 6934,--tay
		ItemID21 = 5720,--lưng
		ItemID22 = 4500,--áo
		ItemID23 = 3998,--phù
		ItemID24 = 9529,--nón
		ItemID25 = 3476,
		ItemID26 = 3476,
		ItemID27 = 3290,--mật tịch cao
		ItemID28 = 3291,--mật tịch cao
	},
	[7] = {
		ItemID1 = 11637,--liên			--  Cái Bang Hỏa
		ItemID2 = 12891,--nhẫn
		ItemID3 = 12067,--bội
		ItemID4 = 6422,--giày
		ItemID5 = 6944,--tay
		ItemID6 = 5730,--lưng
		ItemID7 = 4530,--áo
		ItemID8 = 4008,--phù
		ItemID9 = 9559,--nón

		ItemID10 = 10340,
		ItemID11 = 10320,
		ItemID12 = 3269,--mật tịch trung
		ItemID13 = 3268,--mật tịch trung
		
		
		ItemID16 = 11637,--liên
		ItemID17 = 12891,--nhẫn
		ItemID18 = 12077,--bội
		ItemID19 = 6432,--giày
		ItemID20 = 6954,--tay
		ItemID21 = 5740,--lưng
		ItemID22 = 4540,--áo
		ItemID23 = 4008,--phù
		ItemID24 = 9369,--nón
		ItemID25 = 3476,
		ItemID26 = 3476,
		ItemID27 = 3292,--mật tịch cao
		ItemID28 = 3293,--mật tịch cao
	},
	[8] = {
		ItemID1 = 11637,--liên			-- THiên Nhẫn Hỏa
		ItemID2 = 12891,--nhẫn
		ItemID3 = 12067,--bội
		ItemID4 = 6422,--giày
		ItemID5 = 6944,--tay
		ItemID6 = 5730,--lưng
		ItemID7 = 4530,--áo
		ItemID8 = 4008,--phù
		ItemID9 = 9559,--nón

		ItemID10 = 10330,
		ItemID11 = 10350,
		ItemID12 = 3271,--mật tịch trung
		ItemID13 = 3270,--mật tịch trung
		
		ItemID16 = 11637,--liên
		ItemID17 = 12891,--nhẫn
		ItemID18 = 12077,--bội
		ItemID19 = 6432,--giày
		ItemID20 = 6954,--tay
		ItemID21 = 5740,--lưng
		ItemID22 = 4540,--áo
		ItemID23 = 4008,--phù
		ItemID24 = 9369,--nón
		ItemID25 = 3476,
		ItemID26 = 3476,
		ItemID27 = 3294,--mật tịch cao
		ItemID28 = 3295,--mật tịch cao
	},
	[9] = {
		ItemID1 = 11647,--liên		-- Võ Đang Thổ
		ItemID2 = 12901,--nhẫn
		ItemID3 = 12087,--bội
		ItemID4 = 6442,--giày
		ItemID5 = 6964,--tay
		ItemID6 = 5750,--lưng
		ItemID7 = 4570,--giáp
		ItemID8 = 4018,--phù
		ItemID9 = 9599,--nón

		ItemID10 = 10370,
		ItemID11 = 10380,
		ItemID12 = 3272,--mật tịch trung
		ItemID13 = 3273,--mật tịch trung
		
		ItemID16 = 11647,--liên
		ItemID17 = 12901,--nhẫn
		ItemID18 = 12097,--bội
		ItemID19 = 6452,--giày
		ItemID20 = 6974,--tay
		ItemID21 = 5760,--lưng
		ItemID22 = 4580,--giáp
		ItemID23 = 4018,--phù
		ItemID24 = 9409,--nón
		ItemID25 = 3476,
		ItemID26 = 3476,
		ItemID27 = 3297,--mật tịch cao
		ItemID28 = 3296,--mật tịch cao
	},
	[10] = {
		ItemID1 = 11647,--liên		-- Côn Lôn Thổ
		ItemID2 = 12901,--nhẫn
		ItemID3 = 12087,--bội
		ItemID4 = 6442,--giày
		ItemID5 = 6964,--tay
		ItemID6 = 5750,--lưng
		ItemID7 = 4570,--giáp
		ItemID8 = 4018,--phù
		ItemID9 = 9599,--nón

		ItemID10 = 10360,
		ItemID11 = 10390,
		ItemID12 = 3275,--mật tịch trung
		ItemID13 = 3274,--mật tịch trung
		
		ItemID16 = 11647,--liên
		ItemID17 = 12901,--nhẫn
		ItemID18 = 12097,--bội
		ItemID19 = 6452,--giày
		ItemID20 = 6974,--tay
		ItemID21 = 5760,--lưng
		ItemID22 = 4580,--giáp
		ItemID23 = 4018,--phù
		ItemID24 = 9409,--nón
		ItemID25 = 3476,
		ItemID26 = 3476,
		ItemID27 = 3298,--mật tịch cao
		ItemID28 = 3299,--mật tịch cao
	},
	[11] = {
		ItemID1 = 11617,--liên			--Minh Giáo  Mộc
		ItemID2 = 12871,--nhẫn
		ItemID3 = 12027,--bội
		ItemID4 = 6382,--giày
		ItemID5 = 6904,--tay
		ItemID6 = 5690,--lưng
		ItemID7 = 4470,--ao
		ItemID8 = 3988,--phù
		ItemID9 = 9279,--nón
		
		ItemID10 = 10960,
		ItemID11 = 10970,
		ItemID12 = 3276,--mật tịch trung
		ItemID13 = 3277,--mật tịch trung		
		
		ItemID16 = 11617,--liên
		ItemID17 = 12871,--nhẫn
		ItemID18 = 12037,--hương nang
		ItemID19 = 6392,--giày
		ItemID20 = 6914,--tay
		ItemID21 = 5700,--lưng
		ItemID22 = 5366,--ao
		ItemID23 = 3988,--phù
		ItemID24 = 9289,--nón
		ItemID25 = 3476,--ngựa 1
		ItemID26 = 3476,--ngựa 2
		ItemID27 = 3300,--mật tịch cao
		ItemID28 = 3301,--mật tịch cao
	},
	[12] = {
		ItemID1 = 11627,			--Đoàn Thị  thủy
		ItemID2 = 12881,--nhẫn
		ItemID3 = 12047,--bội
		ItemID4 = 6402,--giày
		ItemID5 = 6924,--tay
		ItemID6 = 5710,--lưng
		ItemID7 = 4510,--áo
		ItemID8 = 3998,--phù
		ItemID9 = 9339,--nón

		ItemID10 = 10310,
		ItemID11 = 10290,
		ItemID12 = 3279,--mật tịch trung
		ItemID13 = 3278,--mật tịch trung
		
		ItemID16 = 11627,--liên
		ItemID17 = 12881,--nhẫn
		ItemID18 = 12057,--bội
		ItemID19 = 6412,--giày
		ItemID20 = 6934,--tay
		ItemID21 = 5720,--lưng
		ItemID22 = 4500,--áo
		ItemID23 = 3998,--phù
		ItemID24 = 9529,--nón
		ItemID25 = 3476,
		ItemID26 = 3476,
		ItemID27 = 3302,--mật tịch cao
		ItemID28 = 3303,--mật tịch cao
	},
}
--****************************************************** --
--	Hàm này được gọi khi người chơi ấn vào NPC
--		scene: Scene - Bản đồ hiện tại
--		npc: NPC - NPC tương ứng
--		player: Player - NPC tương ứng
-- ****************************************************** --
function TayTuyDaiSu:OnOpen(scene, npc, player, otherParams)

	-- ************************** --
	local dialog = GUI.CreateNPCDialog()
	dialog:AddText("A di đà phật, nơi này là <color=orange>Tẩy Tủy Đảo</color>, ta là đại sư phụ trách nơi đây. Bần tăng có thể giúp ngươi <color=yellow>phân phối lại</color> điểm <color=green>tiềm năng</color>, <color=green>kỹ năng</color>, cũng như <color=yellow>thay đổi môn phái</color>.")
	dialog:AddText("<color=yellow>Thay đổi môn phái</color> yêu cầu có <color=yellow>[Thẻ Đổi Môn Phái]</color>. Trong thời gian diễn ra <color=green>Võ lâm liên đấu</color>, ngươi không thể thay đổi môn phái khi đang tham gia chiến đội thi đấu.")
	dialog:AddText("")
	dialog:AddText("Phía sau có một sơn động, sau khi phân phối xong ngươi có thể đến đó thử nghiệm hiệu quả. Nếu không vừa ý thì quay lại tìm ta. Khi hài lòng thì truyền tống môn phái sẽ đưa người trở về.")
	dialog:AddText("")
	dialog:AddText("<color=orange>Chú ý:</color> Chức năng <color=yellow>Thay đổi môn phái</color> sẽ <color=orange>tự động</color> thay đổi <color=green>Ngũ Hành Ấn</color>, <color=green>Quan Ấn</color>, <color=green>Phi Phong</color> đang <color=yellow>trang bị trên người</color> hoặc <color=yellow>trang bị dự phòng</color>.")
	
	dialog:AddSelection(1, "Tẩy điểm tiềm năng ")
	dialog:AddSelection(2, "Tẩy điêm kỹ năng")
	dialog:AddSelection(3, "Tẩy điểm tiềm năng và kỹ năng")
	dialog:AddSelection(4, "Thay đổi môn phái")
	dialog:AddSelection(5, "Thay đổi hệ Ngũ Hành Ấn, Quan Ấn, Phi Phong")
	dialog:AddSelection(6, "Nhận lại đồ hỗ trợ")
	dialog:AddSelection(5555, "Để ta suy nghĩ đã...")
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
function TayTuyDaiSu:OnSelection(scene, npc, player, selectionID, otherParams)

	-- ************************** --
	if selectionID == 5 then
		GUI.OpenChangeSignetMantleAndChopstick(player)
		GUI:CloseDialog(player)
		return
	end
	-- ************************** --
	if selectionID == 1 then
		-- Thực hiện tẩy tiềm năng
		player:UnAssignRemainPotentialPoints()
		
		-- Thông báo
		TayTuyDaiSu:ShowNotify(npc, player, "Tẩy tủy thành công! Tất cả điểm tiềm năng của ngươi đã được phân phối lại.")
		return
	end
	-- ************************** --
	if selectionID == 2 then
		-- Thực hiện tẩy kỹ năng
		player:ResetAllSkillsLevel()
		
		-- Thông báo
		TayTuyDaiSu:ShowNotify(npc, player, "Tẩy tủy thành công! Tất cả kỹ năng của ngươi đã được phân phối lại.")
		return
	end
	-- ************************** --
	if selectionID == 3 then
		-- Thực hiện tẩy tiềm năng
		player:UnAssignRemainPotentialPoints()
		-- Thực hiện tẩy kỹ năng
		player:ResetAllSkillsLevel()
		
		-- Thông báo
		TayTuyDaiSu:ShowNotify(npc, player, "Tẩy tủy thành công! Tất cả điểm tiềm năng và kỹ năng của ngươi đã được phân phối lại.")
		return
	end
	-- ************************** --
	if selectionID == 4 then
		if (Player.IsHaveEquipBody(player)) ==false then
		-- Nếu không có thẻ đổi phái
		if Player.CountItemInBag(player, ChangeFactionCard) <= 0 then
			TayTuyDaiSu:ShowNotify(npc, player, "Chức năng này yêu cầu <color=yellow>[Thẻ Đổi Môn Phái]</color>. Khi nào có hãy đến tìm ta.")
			return
		-- Nếu có chiến đội tham gia Võ lâm liên đấu, và đang trong thời gian diễn ra Võ lâm liên đấu thì không thể đổi phái
		elseif EventManager.TeamBattle_IsBattleTimeToday() == true and EventManager.TeamBattle_IsRegistered(player) == true then
			TayTuyDaiSu:ShowNotify(npc, player, "Trong thời gian diễn ra <color=green>Võ lâm liên đấu</color>, ngươi không thể thay đổi môn phái khi đang tham gia chiến đội thi đấu.")
			return
		end
		
		-- Chọn môn phái
		local dialog = GUI.CreateNPCDialog()
		dialog:AddText("Người muốn đổi qua môn phái nào?")
		for key, value in pairs(Global_FactionName) do
			if key > 0 then
				dialog:AddSelection(100 + key, value)
	   
			end
		end
		dialog:Show(npc, player)
		return
		else
			TayTuyDaiSu:ShowNotify(npc, player, "Ngươi phải tháo hết đồ xuống mới đổi được phái")
		end
	end
	-- ************************** --
	if selectionID >= 101 and selectionID <= #Global_FactionName + 100 then
		-- Nếu không có thẻ đổi phái
		if Player.CountItemInBag(player, ChangeFactionCard) <= 0 then
			TayTuyDaiSu:ShowNotify(npc, player, "Chức năng này yêu cầu <color=yellow>[Thẻ Đổi Môn Phái]</color>. Khi nào có hãy đến tìm ta.")
			return
		-- Nếu có chiến đội tham gia Võ lâm liên đấu, và đang trong thời gian diễn ra Võ lâm liên đấu thì không thể đổi phái
		elseif EventManager.TeamBattle_IsBattleTimeToday() == true and EventManager.TeamBattle_IsRegistered(player) == true then
			TayTuyDaiSu:ShowNotify(npc, player, "Trong thời gian diễn ra <color=green>Võ lâm liên đấu</color>, ngươi không thể thay đổi môn phái khi đang tham gia chiến đội thi đấu.")
			return
		end
		
		-- ID môn phái tương ứng
		local factionID = selectionID - 100
		-- Nếu giới tính không phù hợp
		if player:GetSex() == 0 and factionID == Global_FactionID.EMei then
			TayTuyDaiSu:ShowNotify(npc, player, "Thật đáng tiếc, chưởng môn phái <color=green>Nga My</color> không tiếp nhận <color=green>nam đệ tử</color>, ngươi hãy chọn môn phái khác.")
			return
		elseif player:GetSex() == 1 and factionID == Global_FactionID.ShaoLin then
			TayTuyDaiSu:ShowNotify(npc, player, "Thật đáng tiếc, phương trượng trụ trì phái <color=green>Thiếu Lâm</color> không tiếp nhận <color=green>nữ đệ tử</color>, ngươi hãy chọn môn phái khác.")
			return
		end
		
		-- Xóa thẻ đổi phái
		Player.RemoveItem(player, ChangeFactionCard, 1)
		-- thực hiện set record chứng nhận đã đổi môn phái để đc nhận đồ hỗ trợ
		Player.SetValueOfForeverRecore(player, Record4, 1)
		-- thực hiện reset record nhận đồ tân thủ lại
		Player.SetValueOfForeverRecore(player, Record3, 0)
		-- Thực hiện tẩy tiềm năng
		player:UnAssignRemainPotentialPoints()
		-- Thực hiện đổi sang môn phái tương ứng
		TayTuyDaiSu:JoinFaction(scene, npc, player, factionID)
		
		return
		
	end
	
	if selectionID == 6 then
		local record4 = Player.GetValueForeverRecore(player, Record4)	
		-- Nếu đã nhận rồi
		if record4 ~= 1 then
			TayTuyDaiSu:ShowNotify(npc, player, "Ngươi chưa tiến hành đổi mốn phái không thể nhận <color=green>Đồ hỗ trợ tân thủ</color>!")
			return
		end
		local record3 = Player.GetValueForeverRecore(player, Record3)	
		-- Nếu đã nhận rồi
		if record3 == 1 then
			TayTuyDaiSu:ShowNotify(npc, player, "Mỗi lần đổi môn phái chỉ được nhận <color=green>Đồ hỗ trợ tân thủ</color> một lần!")
			return
		end
		if player:GetFactionID()==0 then
			dialog:AddText(""..player:GetName()..": Bạn chưa gia nhập phái ,hãy gia nhập <color=red> môn phái</color> rồi quay lại <color=red> nhận Nhận Hỗ Trợ Đồ Tân Thủ.</color>")
			dialog:Show(npc, player)
		elseif player:GetFactionID()~=0 then
			if player:GetFactionID()==1 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID14,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID15,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==2 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID14,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID15,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==3 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)				
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==4 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCH(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCH(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==5 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==6 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==7 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==8 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==9 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==10 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==11 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end
			elseif player:GetFactionID()==12 then
				if player:GetSex()==0 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID1,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID2,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID3,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID4,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID5,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID6,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID7,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID8,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID9,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				elseif player:GetSex()==1 then
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID10,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID11,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID12,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID13,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID16,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID17,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID18,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID19,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID20,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID21,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID22,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID23,1,-1,1)
					TayTuyDaiSu:SetBelonging89CH7(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID24,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID25,1,-1,1)
					-- TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID26,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID27,1,-1,1)
					TayTuyDaiSu:SetItemKhongCHCoHSD(npc,player,SetTanThu100CoNgua[player:GetFactionID()].ItemID28,1,-1,1)
					Player.SetValueOfForeverRecore(player, Record3, 1)
				else
					dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
					dialog:Show(npc, player)
				end

			
			end
		else
			dialog:AddText("<color=red>Lỗi rồi</color>.Hãy báo cho GM để được hỗ trợ!!!")
			dialog:Show(npc, player)
		end
	end	
	-- ************************** --
	if selectionID == 5555 then
		GUI:CloseDialog(player)
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
function TayTuyDaiSu:OnItemSelected(scene, npc, player, itemID, otherParams)

	-- ************************** --

	-- ************************** --

end

-- ======================================================= --
-- ======================================================= --
function TayTuyDaiSu:JoinFaction(scene, npc, player, factionID)
	
	-- ************************** --
	local ret = player:JoinFaction(factionID)
	-- ************************** --
	if ret == -1 then
		TayTuyDaiSu:ShowNotify(npc, player, "Người chơi không tồn tại!")
		return ret
	elseif ret == -2 then
		TayTuyDaiSu:ShowNotify(npc, player, "Môn phái không tồn tại!")
		return
	elseif ret == 0 then
		TayTuyDaiSu:ShowNotify(npc, player, "Giới tính của ngươi không phù hợp với môn phái này!")
		return
	elseif ret == 1 then
		TayTuyDaiSu:ShowNotify(npc, player, "Tẩy tủy thành công! Môn phái cùng toàn bộ điểm tiềm năng và kỹ năng của ngươi đã được phân phối lại")
		return
	else
		TayTuyDaiSu:ShowNotify(npc, player, "Thay đổi môn phái thất bại, lỗi chưa rõ!")
		return
	end
	-- ************************** --

end
-- ======================================================= --
-- ======================================================= --
function TayTuyDaiSu:ShowNotify(npc, player, text)

	-- ************************** --
	local dialog = GUI.CreateNPCDialog()
	dialog:AddText(text)
	dialog:AddSelection(5555, "Kết thúc đối thoại")
	dialog:Show(npc, player)
	-- ************************** --

end
function TayTuyDaiSu:SetBelonging89CH7(npc, player, ItemID,Number,Series,LockStatus)

	if ItemID == nil then
		return
	end
	if Series == nil then
		return
	end
	-- ************************** --
	Player.AddItemLua(player,ItemID,Number,Series,LockStatus,8)
	TayTuyDaiSu:ShowNotify(npc, player,"Nhận phẩm thành công theo hệ <color=red>Thành công !+8</color>")
	-- ************************** --
end
function TayTuyDaiSu:SetItemKhongCHCoHSD(npc, player, ItemID,Number,Series,LockStatus)

	if ItemID == nil then
		return
	end
	if Series == nil then
		return
	end
	-- ************************** --
	Player.AddItemLua(player,ItemID,Number,-1,1,0, 43202)
	-- ************************** --
end
function TayTuyDaiSu:SetItemKhongCH(npc, player, ItemID,Number,Series,LockStatus)

	if ItemID == nil then
		return
	end
	if Series == nil then
		return
	end
	-- ************************** --
	Player.AddItemLua(player,ItemID,Number,-1,1)
--	Player.AddItemLua(player,ItemID,Number,Series,LockStatus,16)
	-- TayTuyDaiSu:ShowNotify(npc, player,"Nhận phẩm thành công theo hệ <color=red>Thành công !+12</color>")
	-- ************************** --
end