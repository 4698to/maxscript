macroScript nd_savepath
    category:"joe_tool"
    toolTip:"getsavepath"
    buttonText:"savepath"
    Icon:#("openfile",1)
(
    
    Global newj_path=maxfilepath
    --newj_name=filterstring maxfilename"."
    Global newj_name=substring maxfilename 1 (maxfilename.count-4)
    --sav_doen="已保存为："+newj_svname
    
    if newj_svname == undefined and newj_path==""  then 
        (
            messageBox "未保存过，请先手动保存"
        )
    else 
        (

            a=2
            b=a as string 
            global newj_svname=newj_path+newj_name+"_0"+b+".max"
            h=doesFileExist newj_svname
            while h == true do
                (
                    a=a+1
                    b=a as string 
                    newj_svname=newj_path+newj_name+"_0"+b+".max"
                    h=doesFileExist newj_svname
                    
                )
            savemaxfile newj_svname
            messageBox newj_svname
             

        )


)
