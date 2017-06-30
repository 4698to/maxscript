rollout CreatDummy "hide" width:205 height:100
(

    button btn_hide "Hide" pos:[56,10] width:90 height:22
    button btn_onhide "onHide" pos:[56,42] width:90 height:22


    on btn_hide pressed do
    (
        undo on
        (
            persistent global m_selelist=#()
            for o in selection do
                (
                    append m_selelist o
                    $.isHidden=true
                )
            persistent global onub=m_selelist.count
        )
    )


    on btn_onhide pressed do
    (
        undo on
        (
            if onub ==1 then
            (
            select m_selelist[1]
            $.isHidden=false
            )
        else

            if queryBox "unhide?" do
            (
                for i in 1 to onub do
                (
                    select m_selelist[i]
                    $.isHidden=false
                )
            )
        )


    )

)



createDialog CreatDummy

