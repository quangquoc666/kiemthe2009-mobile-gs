-- Mỗi khi Script được thực thi, ID tương ứng sẽ được lưu trong hệ thống, tại bảng 'Scripts'
-- Dạng đối tượng là dạng Class, được khởi tạo mặc định bởi hệ thống, và sau đó được lưu tại bảng
-- Khi sử dụng dạng Class, cần phải kế thừa Class được hệ thống sinh ra, và dòng lệnh bên dưới để làm điều đó
-- ID Script được khai báo ở file ScriptIndex.xml, thay thế giá trị '000014' bên dưới thành ID tương ứng
local TienTrang = Scripts[000014]

--****************************************************** --
--	Hàm này được gọi khi người chơi ấn vào NPC
--		scene: Scene - Bản đồ hiện tại
--		npc: NPC - NPC tương ứng
--		player: Player - NPC tương ứng
-- ****************************************************** --
function TienTrang:OnOpen(scene, npc, player,otherParams)

	-- ************************** --
	local dialog = GUI.CreateNPCDialog()
	dialog:AddText("<color=red>"..player:GetName().."</color>, tìm ta có việc gì?")
	--dialog:AddSelection(1, "Tiền trang kiếm thế")
	dialog:AddSelection(2, "Tiệm hồn thạch")
	dialog:AddSelection(3, "Tách trang bị chế hoặc Phi Phong ")
	--dialog:AddSelection(4, "Phi Phong đổi Hồn Thạch ")
	dialog:AddSelection(5, "Kết thúc đối thoại")
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
function TienTrang:OnSelection(scene, npc, player, selectionID, otherParams)
	-- ************************** --
	local dialog = GUI.CreateNPCDialog()
	if selectionID == 1 then
		dialog:AddText("Tính năng chưa mở")
		dialog:Show(npc, player)
	elseif selectionID == 2 then
		if player:GetLevel() >= 10 then
			if player:GetFactionID()== 1 or player:GetFactionID()== 2 then
				Player.OpenShop(npc, player,140)
				GUI.CloseDialog(player)
			elseif player:GetFactionID()== 3 or player:GetFactionID()== 4 or player:GetFactionID()== 11  then
				Player.OpenShop(npc, player,141)
				GUI.CloseDialog(player)
			elseif player:GetFactionID()== 5 or player:GetFactionID()== 6 or player:GetFactionID()== 12 then
				Player.OpenShop(npc, player,142)
				GUI.CloseDialog(player)
			elseif player:GetFactionID()== 7 or player:GetFactionID()== 8 then
				Player.OpenShop(npc, player,143)
				GUI.CloseDialog(player)
			elseif player:GetFactionID()== 9 or player:GetFactionID()== 10 then
				Player.OpenShop(npc, player,144)
				GUI.CloseDialog(player)
			end
			GUI.CloseDialog(player)
		else
			dialog:AddText("Chưa đủ cấp !")
			dialog:Show(npc, player)
		end
	elseif selectionID == 5 then
		GUI.CloseDialog(player)
	end
	if selectionID == 3 then
		GUI.OpenUI(player, "UIEquipRefineToFS")
		GUI.CloseDialog(player)
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
function TienTrang:OnItemSelected(scene, npc, player, itemID, otherParams)

	-- ************************** --
	
	-- ************************** --

end