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
        

        
    
    )

    
    
    
)
createDialog ChangePolygonID


