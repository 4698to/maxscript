rollout CreatDummy "" width:205 height:220
(
    local newj_path=maxfilepath
    local newj_name=substring maxfilename 1 (maxfilename.count-4)
    global newj_name_02=""
    edittext edname "Name" text:newj_name 
    button do_save "OK"
    on do_save pressed do
    (
        newj_name_02=edname.text
        if newj_name_02 =="" do 
            (
                messageBox "name undefined"
            --max file saveas
            )

        if newj_path=="" do
            (
                max file saveas
            )

    else 
        (

            --a=execute joe_name
            --if a == undefined then 
            a=2
            --else 
            --    a=a+1     
            b=a as string 
            newj_svname=newj_path+(substring newj_name 1 (newj_name.count-2))+"0"+b+".max"
            joe_h=doesFileExist newj_svname
            while joe_h == true do
                (
                    a=a+1
                    
                    
                    b=a as string 
                    newj_svname=newj_path+(substring newj_name 1 (newj_name.count-2))+"0"+b+".max"
                    joe_h=doesFileExist newj_svname
                   
                )
            savemaxfile newj_svname
            messageBox newj_svname
            )
    
    )
)
createDialog CreatDummy


l=getMAXSaveFileName filename:maxfilepath
saveMaxfile l