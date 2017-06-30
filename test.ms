modPanel.addModToSelection (Skin ()) ui:on
$Teapot002.modifiers[#Skin].mirrorEnabled = off
select $Teapot003
clearSelection()
select $Teapot003
clearSelection()
select $Teapot002
$Teapot002.modifiers[#Skin].mirrorEnabled = off
skinOps.addBone $Teapot002.modifiers[#Skin] $Box001 1
$Teapot002.modifiers[#Skin].cross_radius = 20.3311
$Teapot002.modifiers[#Skin].bone_Limit = 1

t=$
addModifier t (Skin bone_Limit:1)

centerPivot $new_Box009  -- 轴居中

max link
$.parent = $Box002 --指定父节点