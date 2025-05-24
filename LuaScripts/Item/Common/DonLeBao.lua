-- Mỗi khi Script được thực thi, ID tương ứng sẽ được lưu trong hệ thống, tại bảng 'Scripts'
-- Dạng đối tượng là dạng Class, được khởi tạo mặc định bởi hệ thống, và sau đó được lưu tại bảng
-- Khi sử dụng dạng Class, cần phải kế thừa Class được hệ thống sinh ra, và dòng lệnh bên dưới để làm điều đó
-- ID Script được khai báo ở file ScriptIndex.xml, thay thế giá trị '200005' bên dưới thành ID tương ứng
local DonLeBao = Scripts[200009]
local EXPDonLeBaoSieuToc ={500000000,1000000000,1500000000,2000000000}
-- ****************************************************** --
--	Hàm này được gọi khi người chơi ấn sử dụng vật phẩm, kiểm tra điều kiện có được dùng hay không
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
--	Return: True nếu thỏa mãn điều kiện có thể sử dụng, False nếu không thỏa mãn
-- ****************************************************** --
function DonLeBao:OnPreCheckCondition(scene, item, player, otherParams)

	-- ************************** --
	--player:AddNotification("Enter -> DonLeBao:OnPreCheckCondition")--
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
function DonLeBao:OnUse(scene, item, player, otherParams)

	local ItemID = item:GetItemID()

	local Itemlevel = item:GetItemLevel()
	
	local ValueInRecore = Player.GetBCH(player,Itemlevel)

	if(ValueInRecore==-1) then

		ValueInRecore = 0

	end
    

	local MSG = "Số phút Bạch Cầu Hoàn ủy thác hiện tại đang có :"..ValueInRecore.."\nSau khi sử dụng số phút tối đa có thể ủy thác là : "..(ValueInRecore-480).." phút!\nSố phút ủy thác của bạn đưới 8h sẽ không sử dụng được"
	local MSG2="Số phút Bạch Cầu Hoàn ủy thác hiện tại đang có :"..ValueInRecore.." \nKhông đủ để sử dụng vật phẩm này" 
	local dialog = GUI.CreateItemDialog()

    if(ValueInRecore<=480) then
        dialog:AddText(MSG2)
        dialog:Show(item, player)
        return
    end
	dialog:AddText(MSG)
    dialog:AddSelection(1, "Ta muốn sử dụng bây giờ")
    dialog:AddSelection(2, "Ta suy nghĩ đã")
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
function DonLeBao:OnSelection(scene, item, player, selectionID, otherParams)

	local GetValue = Player.GetValueOfDailyRecore(player,item:GetItemID())
	local dialog = GUI.CreateItemDialog()
	if (selectionID == 1) then

		local ItemID = item:GetItemID()
	
		local Itemlevel = item:GetItemLevel()

		local ValueInRecore = Player.GetBCH(player,Itemlevel)

		if(ValueInRecore==-1) then

			ValueInRecore = 0
			
		end
		--local GetBCH= Player.GetBCH(player,Itemlevel)
		--local MSG = "Số phút ủy thác của bạn quá nhiều không thể ủy thác nữa : "..ValueInRecore..""
        if(ValueInRecore<=480) then
            dialog:AddText("Số phút ủy thác của bạn không đủ nên không dùng được vật phẩm này : "..ValueInRecore.."")
            dialog:Show(item, player)
        else
            local NewValue = ValueInRecore - 480; -- trừ 8 tiếng bạch cầu hoàn
            local EXPLevel = EXPDonLeBaoSieuToc[Itemlevel] 

            Player.RemoveItem(player,item:GetID()) -- xóa vật phẩm sau khi dùng

            Player.SetBCH(player,NewValue,Itemlevel) -- sét lại bạch cầu hoàn

            Player.AddRoleExp(player,EXPLevel) --Add exp cho nhân vật

            player:AddNotification("Sử dụng vật phẩm thành công ==> "..item:GetName().." + "..EXPLevel.."EXP");
            GUI.CloseDialog(player)
        end
    
    else

        if selectionID == 2 then
            GUI.CloseDialog(player)
        end

    end

	
	

end

-- ****************************************************** --
--	Hàm này được gọi khi có sự kiện người chơi chọn một trong các vật phẩm, và ấn nút Xác nhận cung cấp bởi vật phẩm thông qua Item Dialog
--		scene: Scene - Bản đồ hiện tại
--		item: Item - Vật phẩm tương ứng
--		player: Player - NPC tương ứng
--		itemID: number - ID vật phẩm được chọn
-- ****************************************************** --
function DonLeBao:OnItemSelected(scene, item, player, itemID)

	-- ************************** --

	-- ************************** --

end