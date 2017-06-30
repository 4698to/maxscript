Global jsv_fielname = maxFilename 
Global jsv_fielpath = maxFilepath 
Global new_svname = filterString jsv_fielname"."
rollout ChangePolygonID "test" width:117 height:78
(
    button ChangeNow "自动保存" pos:[11,8] width:76 height:35 



    
    on ChangeNow pressed do
    (   
        jnew_name = uniquename jsv_fielname
        jnew_path = jsv_fielpath+jnew_name
        --savemaxfile jnew_name
        saveMaxFile jnew_name+maxfilename

    
    )

    
    
    
)
createDialog ChangePolygonID

