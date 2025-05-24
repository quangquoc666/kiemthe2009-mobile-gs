-- Mỗi khi Script được thực thi, ID tương ứng sẽ được lưu trong hệ thống, tại bảng 'Scripts'
-- Dạng đối tượng là dạng Class, được khởi tạo mặc định bởi hệ thống, và sau đó được lưu tại bảng
-- Khi sử dụng dạng Class, cần phải kế thừa Class được hệ thống sinh ra, và dòng lệnh bên dưới để làm điều đó
-- ID Script được khai báo ở file ScriptIndex.xml, thay thế giá trị '000000' bên dưới thành ID tương ứng
local ThoRen = Scripts[0000011]

-- ****************************************************** --
--	Hàm này được gọi khi người chơi ấn vào NPC
--		scene: Scene - Bản đồ hiện tại
--		npc: NPC - NPC tương ứng
--		player: Player - Người chơi tương ứng
-- ****************************************************** --
function ThoRen:OnOpen(scene, npc, player)

	-- ************************** --
        local dialog = GUI.CreateNPCDialog()
        dialog.AddText("Tại đây chuyên làm binh khí cho quân đội nên rất bận rộn. Cần loại vũ khí nào thì chọn tự nhiên nhé")
        dialog.AddSelection(1,"Mở cửa hàng")
		dialog.AddSelection(2,"Mở cửa hàng (bạc khóa)")
        dialog.AddSelection(3,"Ta chỉ đi ngang qua thôi !")
        dialog.Show(npc,player)
	-- ************************** --

end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi ấn vào một trong số các chức năng cung cấp bởi NPC thông qua NPC Dialog
--		scene: Scene - Bản đồ hiện tại
--		npc: NPC - NPC tương ứng
--		player: Player - Người chơi tương ứng
--		selectionID: number - ID chức năng
-- ****************************************************** --
function ThoRen:OnSelection(scene, npc, player, selectionID)

	-- ************************** --
	if selectionID == 1 then
        local dialog = GUI.CreateNPCDialog()
        Player.OpenShop(npc,player,227)
        GUI.CloseDialog(player)
    elseif selectionID == 2 then
        Player.OpenShop(npc,player,2270)
        GUI.CloseDialog(player)
    elseif selectionID == 3 then
        local dialog = GUI.CreateNPCDialog()
       	GUI.CloseDialog(player)
		return
	-- ************************** --
    end
end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi chọn một trong các vật phẩm, và ấn nút Xác nhận cung cấp bởi NPC thông qua NPC Dialog
--		scene: Scene - Bản đồ hiện tại
--		npc: NPC - NPC tương ứng
--		player: Player - NPC tương ứng
--		selectedItemInfo: SelectItem - Vật phẩm được chọn
--		otherParams: Key-Value {number, string} - Danh sách các tham biến khác
-- ****************************************************** --
function ThoRen:OnItemSelected(scene, npc, player, selectedItemInfo, otherParams)

	-- ************************** --
	
	-- ************************** --

end