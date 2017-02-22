rollout ChangePolygonID "test" width:251 height:125
(
	button ChangeNow "路径约束" pos:[22,67] width:76 height:35 
 
	pickbutton pickpath "PickButton" pos:[24,23] width:76 height:30
	button pickpathObj "" pos:[116,24] width:121 height:27

    
    
    
	on ChangeNow pressed do
	(
		$.pos.controller = Path_Constraint ()
		max motion mode
		$.pos.controller.path = pickpath.name
	    $.pos.controller.follow = on
	    $.pos.controller.allowUpsideDown = on
	    
	
	
	
	)
)
createDialog ChangePolygonID


