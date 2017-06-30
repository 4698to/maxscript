rollout CreatDummy "" width:205 height:220
(
	checkbox NewPointbox "Box" pos:[15,25] width:143 height:24 enabled:true checked:true
    checkbox NewPointcross "Cross" pos:[15,85] width:143 height:24
    checkbox NewPointaxis"Axis Tripod" pos:[15,45] width:143 height:24
    checkbox NewPointcenM"Center Marker" pos:[15,64] width:143 height:24
    spinner spn_PointSize "Size" pos:[24,112] width:105 height:16 range:[0,300,20] type:#integer scale:1
	button btn_CreatPoint "Create" pos:[56,152] width:90 height:22
    groupBox Display "Display" pos:[7,6] width:185 height:186

	on btn_CreatPoint pressed do
	(
		undo on
		(
			AllPoint = #()
			for o in selection do
			(
				NewPoint = point()
				if NewPointbox.checked == true then
					NewPoint.box=on
				else
					NewPoint.box=off

                if NewPointcross.checked == true then
                    NewPoint.cross=on
                else
                    NewPoint.cross=off

                if NewPointaxis.checked == true then
                    NewPoint.axistripod=on
                else
                    NewPoint.axistripod=off

                if NewPointcenM.checked == true then
                    NewPoint.centermarker=on
                else
                    NewPoint.centermarker=off


				NewPoint.transform = o.transform
				NewPoint.size = spn_PointSize.value
				Newpoint.name = "Point_"+ o.name
				append AllPoint  Newpoint
				)

			select AllPoint
			selectionSets ["Point_ji"] = AllPoint
		)
	)



	)



createDialog CreatDummy

