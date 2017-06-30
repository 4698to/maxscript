
(
--local obj_array = selection as array
--local obj_array =#()
--local obj_name_array = for o in obj_array collect o.name

--local obj_name_array = #()

--local text_name=obj_name_array[1]

rollout CloneObject "Clone Object"
(

radiobuttons copy_type labels:#("copy", "instance", "reference")

--radiobuttons which_obj labels:obj_name_array -- computed label array
edittext bt_te "Base Name:"
button do_it "Copy Object"


fn updateButton = (
do_it.text = case copy_type.state of (
1: "Copy "
2: "Instance "
3: "Reference ")
--do_it.text += obj_name_array [which_obj.state]
--obj_array[which_obj.state].name=bt_te.text + obj_array[which_obj.state].name
--bt_te.text +=
)--end fn
on copy_type changed state do updateButton()
--on which_obj changed state do updateButton()
on CloneObject open do updateButton()
--on bt_te entered txt do updateButton()


on do_it pressed do (

        obj_array=selection as array
        copyfn = case copy_type.state of (
        1: copy
        2: instance
        3: reference
        )
        for o in 1 to obj_array.count do
            (
                copyfn obj_array[o]
                obj_array[o].name=bt_te.text + obj_array[o].name
            )
        --if which_obj.state > 0 do copyfn obj_array[which_obj.state]
--if bt_te.text !="" do obj_array[which_obj.state].name=bt_te.text + obj_array[which_obj.state].name
)--end on pressed
)--end rollout
--if obj_array.count > 0 do createDialog CloneObject
createDialog CloneObject
)--end script