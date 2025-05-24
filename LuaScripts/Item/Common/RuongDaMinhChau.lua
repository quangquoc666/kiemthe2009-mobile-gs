-- Mỗi khi Script được thực thi, ID tương ứng sẽ được lưu trong hệ thống, tại bảng 'Scripts'
-- Dạng đối tượng là dạng Class, được khởi tạo mặc định bởi hệ thống, và sau đó được lưu tại bảng
-- Khi sử dụng dạng Class, cần phải kế thừa Class được hệ thống sinh ra, và dòng lệnh bên dưới để làm điều đó
-- ID Script được khai báo ở file ScriptIndex.xml, thay thế giá trị '200005' bên dưới thành ID tương ứng
local RuongDaMinhChau = Scripts[200098]

-- ************************** --
local tbLevel = {
    [1] = 100,
    [2] = 1000,
	[3] = 100,
    [4] = 1000,
    [5] = 5000,
    [6] = 5000,
}
local FSItemID = 796
-- ************************** --

-- ****************************************************** --
--	Hàm này được gọi khi người chơi ấn sử dụng vật phẩm, kiểm tra điều kiện có được dùng hay không
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
--	Return: True nếu thỏa mãn điều kiện có thể sử dụng, False nếu không thỏa mãn
-- ****************************************************** --
function RuongDaMinhChau:OnPreCheckCondition(scene, item, player, otherParams)

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
function RuongDaMinhChau:OnUse(scene, item, player, otherParams)

    -- ************************** --
	-- Level rương
    -- local itemLevel = item:GetItemLevel()
	-- Lượng NHHT nhận được
    -- local nCount = tbLevel[itemLevel]
    -- ************************** --
	-- local dialog = GUI.CreateItemDialog()
    -- dialog:AddText("Sau khi mở rương, ngươi có thể nhận được " .. nCount .." Tần Lăng-Dạ Minh Châu. Muốn sử dụng không?")
    -- dialog:AddSelection(1, "Ta đồng ý")
    -- dialog:AddSelection(2, "Ta suy nghĩ đã")
	-- dialog:Show(item, player)
    -- ************************** --
		-- Level rương
		local itemLevel = item:GetItemLevel()
		-- Lượng NHHT nhận được
		local nCount = tbLevel[itemLevel]
		
		-- Toác
		if not tbLevel[itemLevel] then
			self:ShowDialog(item, player, "Có lỗi khi sử dụng vật phẩm, hãy thử lại sau!")
			return
		end
		
		-- Túi không đủ chỗ trống
		if Player.HasFreeBagSpaces(player, 1) == false then
			self:ShowDialog(item, player, string.format("Túi đồ cần để trống tối thiểu <color=green>1 ô trống</color> trong túi đồ để lấy Tần Lăng-Dạ Minh Châu!"))
			return
		end
		
		-- NHHT nhận lại có khóa không
		local fsBound = item:GetBindingState()
		-- Xóa rương
		Player.RemoveItem(player, item:GetID())
		
		-- Thêm Tần Lăng-Dạ Minh Châu tương 
		Player.AddItemLua(player, FSItemID, nCount, -1, fsBound)
		player:AddNotification("Sử dụng " .. item:GetName() .. " thành công nhận được <color=green>" .. nCount .. "</color> Tần Lăng-Dạ Minh Châu!.")
end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi ấn vào một trong số các chức năng cung cấp bởi vật phẩm thông qua Item Dialog
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
--		selectionID: number - ID chức năng
-- ****************************************************** --
function RuongDaMinhChau:OnSelection(scene, item, player, selectionID, otherParams)

	--[[ ************************** --
	if selectionID == 2 then
		GUI.CloseDialog(player)
		return
	end
	-- ************************** --
	if selectionID == 1 then
		-- Level rương
		local itemLevel = item:GetItemLevel()
		-- Lượng NHHT nhận được
		local nCount = tbLevel[itemLevel]
		
		-- Toác
		if not tbLevel[itemLevel] then
			self:ShowDialog(item, player, "Có lỗi khi sử dụng vật phẩm, hãy thử lại sau!")
			return
		end
		
		-- Túi không đủ chỗ trống
		if Player.HasFreeBagSpaces(player, 1) == false then
			self:ShowDialog(item, player, string.format("Túi đồ cần để trống tối thiểu <color=green>1 ô trống</color> trong túi đồ để lấy Tần Lăng-Dạ Minh Châu!"))
			return
		end
		
		-- NHHT nhận lại có khóa không
		local fsBound = item:GetBindingState()
		-- Xóa rương
		Player.RemoveItem(player, item:GetID())
		
		-- Thêm Tần Lăng-Dạ Minh Châu tương 
		Player.AddItemLua(player, FSItemID, nCount, -1, fsBound)
		
		self:ShowDialog(item, player, string.format("Nhận thành công <color=green>%d</color> Tần Lăng-Dạ Minh Châu!", nCount))
		return
	end
	-- ************************** --
  ]]
end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi chọn một trong các vật phẩm, và ấn nút Xác nhận cung cấp bởi vật phẩm thông qua Item Dialog
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
--		itemID: number - ID vật phẩm được chọn
-- ****************************************************** --
function RuongDaMinhChau:OnItemSelected(scene, item, player, itemID)

	-- ************************** --

	-- ************************** --

end

function RuongDaMinhChau:ShowDialog(item, player, text)

	-- ************************** --
	local dialog = GUI.CreateItemDialog()
	dialog:AddText(text)
	dialog:Show(item, player)
	-- ************************** --
	
end
