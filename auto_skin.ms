rollout creat_skin "" width:200
(
    group "CreatHelp" (
        CheckBox n_point_b "box" checked:true --across:3
        spinner n_point_size "Size" range:[0,300,20] width:60 type:#integer
        --button craet_bone "CreatHelp"
        -- Group body.
    )
    group "creahSkin" (
        spinner n_skinbone "Affect Limit" range:[1,20,1] width:60 type:#Integer
        button creat_skin "Skin"
        -- Group body.
    )
    on creat_skin pressed do
    (
        undo on
        (
            AllPoint = #()
            m_select=selection as array
            for o in 1 to m_select.count do
            (
                i = m_select[o]
                NewPoint = point()

                if n_point_b.checked ==true then
                    NewPoint.box=on
                else
                    NewPoint.box=off

                NewPoint.transform = i.transform
                NewPoint.size = n_point_size.value
                Newpoint.name = "Point_"+ i.name
                Newpoint.parent = $Battleship_root

                --addModifier i (Skin bone_Limit:n_skinbone.value)
                select i
                modPanel.addModToSelection (Skin bone_Limit:n_skinbone.value) ui:on
                skinOps.addBone i.modifiers[#Skin] NewPoint 1
                --i.modifiers[#Skin].bone_Limit = 1


                append AllPoint  Newpoint
            )

        )
    )

)

CreateDialog creat_skin