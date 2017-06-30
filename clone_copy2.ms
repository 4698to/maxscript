 --Create some scene objects. Select them, then run the script:
(
local obj_array = selection as array
local obj_name_array = for o in obj_array collect o.name
local text_name=obj_name_array[1]
rollout CloneObject "Clone Object" (
radiobuttons copy_type labels:#("copy", "instance", "reference")
radiobuttons which_obj labels:obj_name_array -- computed label array
edittext bt_te "name:" text:text_name
button do_it "Copy Object"
fn updateButton = (
do_it.text = case copy_type.state of (
1: "Copy "
2: "Instance "
3: "Reference ")
do_it.text += obj_name_array [which_obj.state]
)--end fn
on copy_type changed state do updateButton()
on which_obj changed state do updateButton()
on CloneObject open do updateButton()
on do_it pressed do (
copyfn = case copy_type.state of (
1: copy
2: instance
3: reference)
if which_obj.state > 0 do copyfn obj_array[which_obj.state]
)--end on pressed
)--end rollout
if obj_array.count > 0 do createDialog CloneObject
)--end script