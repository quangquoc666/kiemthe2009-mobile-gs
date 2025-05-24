-- Mỗi khi Script được thực thi, ID tương ứng sẽ được lưu trong hệ thống, tại bảng 'Scripts'
-- Dạng đối tượng là dạng Class, được khởi tạo mặc định bởi hệ thống, và sau đó được lưu tại bảng
-- Khi sử dụng dạng Class, cần phải kế thừa Class được hệ thống sinh ra, và dòng lệnh bên dưới để làm điều đó
-- ID Script được khai báo ở file ScriptIndex.xml, thay thế giá trị '200003' bên dưới thành ID tương ứng
local TranPhap = Scripts[200089]

local ZhenFaList = {
	[3899] = {
		ItemID = 3899,
		Name = "Trận pháp-Cao: Ngũ Hành Trận",
		Number = 1,
	},
	[3900] = {
		ItemID = 3900,
		Name = "Trận pháp-Cao: Bát Quái Trận - Li",
		Number = 1,
	},
	[3901]=  {
		ItemID=3901,
		Name="Trận pháp-Cao: Bát Quái Trận - Đoài",
		Number = 1,
	},
	[3902]=  {
		ItemID = 3902,
		Name = "Trận pháp-Cao: Bát Quái Trận - Cấn",
		Number = 1,
	},
	[3903]=  {
		ItemID = 3903,
		Name = "Trận pháp-Cao: Bát Quái Trận - Khảm",
		Number = 1,
	},
	[3904]=  {
		ItemID = 3904,
		Name = "Trận pháp-Cao: Bát Quái Trận - Tốn",
		Number = 1,
	},
	[3905]=  {
		ItemID = 3905,
		Name = "Trận pháp-Cao: Bát Quái Trận - Càn",
		Number = 1,
	},
	[3906]=  {
		ItemID = 3906,
		Name = "Trận pháp-Cao: Thanh Long Trận",
		Number = 1,
	},
	[3907]=  {
		ItemID = 3907,
		Name = "Trận pháp-Cao: Huyễn Vũ Trận",
		Number = 1,
	},
	[3908]=  {
		ItemID = 3908,
		Name = "Trận pháp-Cao: Bạch Hổ Trận",
		Number = 1,
	},
	[3909]=  {
		ItemID = 3909,
		Name = "Trận pháp-Cao: Chu Tước Trận",
		Number = 1,
	},
}
-- ****************************************************** --
--	Hàm này được gọi khi người chơi ấn sử dụng vật phẩm, kiểm tra điều kiện có được dùng hay không
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
--	Return: True nếu thỏa mãn điều kiện có thể sử dụng, False nếu không thỏa mãn
-- ****************************************************** --
function TranPhap:OnPreCheckCondition(scene, item, player, otherParams)

	-- ************************** --
	return true
	-- ************************** --

end

-- ****************************************************** --
--	Hàm này được gọi để thực thi Logic khi người sử dụng vật phẩm, sau khi đã thỏa mãn hàm kiểm tra điều kiện
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
-- ****************************************************** --
function TranPhap:OnUse(scene, item, player, otherParams)

	-- ************************** --
	local dialog = GUI.CreateItemDialog()
	if item:GetItemID()== 741 then
		dialog:AddText("Ngươi muốn lấy trận pháp cao cấp nào?")
		for key, value in pairs(ZhenFaList) do
			dialog:AddSelection(key, value.Name)
		end
	end
	dialog:AddSelection(100, "Để sau...")
	dialog:Show(item, player)
	-- ************************** --

end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi ấn vào một trong số các chức năng cung cấp bởi vật phẩm thông qua Item Dialog
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
--		selectionID: number - ID chức năng
-- ****************************************************** --
function TranPhap:OnSelection(scene, item, player, selectionID, otherParams)

	-- ************************** --
	if selectionID == 100 then
		GUI.CloseDialog(player)
	else
		-- Toác
		if ZhenFaList[selectionID] == nil then
			self:ShowDialog(item, player, "Vật phẩm bị lỗi, hãy thử lại sau!")
			return
		end
		
		-- Túi không đủ chỗ trống
		if Player.HasFreeBagSpaces(player, 1) == false then
			self:ShowDialog(item, player, string.format("Túi đồ cần để trống tối thiểu <color=green>1 ô trống</color> trong túi đồ để lấy trận pháp!"))
			return
		end
		
		-- Thêm vật phẩm vào
		Player.AddItemLua(player, ZhenFaList[selectionID].ItemID, ZhenFaList[selectionID].Number, -1, 1, 0, 10800)
		--Player.RemoveItem(player, item:GetID())	-- Xóa vật ph
		GUI.CloseDialog(player)
		-- Thông báo nhận thành công
		player:AddNotification("Lấy trận pháp đồ thành công!")
	end
	-- ************************** --
	item:FinishUsing(player)

end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi chọn một trong các vật phẩm, và ấn nút Xác nhận cung cấp bởi vật phẩm thông qua Item Dialog
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
--		itemID: number - ID vật phẩm được chọn
-- ****************************************************** --
function TranPhap:OnItemSelected(scene, item, player, itemID)

	-- ************************** --

	-- ************************** --

end

function TranPhap:ShowDialog(item, player, text)

	-- ************************** --
	local dialog = GUI.CreateItemDialog()
	dialog:AddText(text)
	dialog:Show(item, player)
	-- ************************** --
	
end