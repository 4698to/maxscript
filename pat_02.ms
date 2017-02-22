rollout ChangePolygonID "test" width:117 height:78
(
    button ChangeNow "POS约束" pos:[11,8] width:76 height:35 



    
    on ChangeNow pressed do
    (
		$.pos.controller = Position_Constraint ()  ---posCtrl =Position_Constraint()
            --Controller:Position_Constraint
        $.pos.controller.constraints        ----posConstraintInterface = posCtrl.constraints
            --<MixinInterface:constraints>
        $.pos.controller.constraints.appendTarget $box002 50.0              ---posConstraintInterface.appendTarget $box01 20.0
            --true
        $.pos.controller.RELATIVE = on
        --$.pos.controller.allowUpsideDown = on


        $.pos.controller = position_list ()  -- 将位置控制改为 位置列表控制
        
        $.pos.controller.Available.controller = Position_Constraint ()   -- 在可用控制器列表里添加位置约束
        $.pos.controller.SetActive 2  -- 激活 list中的
    
    )
    

    $.pos.controller = position_list ()
    $.pos.controller.Available.controller = Position_XYZ ()
    $.pos.controller.Available.controller = Position_Constraint ()
    $.pos.controller.Available.controller = bezier_position ()
    lst = $.pos.controller-- the list controller
    showInterfaces lst-- interface name is "list"
    lst.getCount()-- count function  获取列表长度
    lst.count-- count property (read only) 同上
    lst.SetActive 3-- set active function  激活 第几个
    lst.GetActive()-- get active function 同上 
    lst.active-- active property 获取当前激活的列表序号
    lst.cut 2-- cut the second sub-controller 删除 第二个
    lst.paste 1-- paste it to the top of the list 
    lst.delete lst.count-- delete the second to last sub-controller 删除最下面那个
    lst.setName 2 "My Bezier"-- sets the name of the second sub-controller  将第二个名为 
    lst.getName 2-- gets the name of the sub-controller  获取第二个的名字
    $.pos.controller.Position_Constraint.appendTarget $box003 50.0    添加目标
    
    
)
createDialog ChangePolygonID


