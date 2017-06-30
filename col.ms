rollout CdillaOPS "License Properties" width:220 height:270
(
groupBox grp1 "License Values" pos:[18,18] width:180 height:265
button btn5 "Days until Expiration" pos:[50,45] width:119 height:18
editText edt5 "" pos:[50,75] width:119 height:18
button btn6 "License Version" pos:[50,105] width:119 height:18
editText edt6 "" pos:[50,135] width:119 height:18
button btn7 "License Behavior" pos:[50,165] width:119 height:18
editText edt7 "" pos:[50,195] width:119 height:18
button btn8 "Hardware Lock ID" pos:[50,225] width:119 height:18
editText edt8 "" pos:[50,255] width:119 height:18
on btn5 pressed do
edt5.text = (maxOps.licenseDaysLeft as string)
on btn6 pressed do
(
version = maxOps.productVersion as string
edt6.text = substring version 15 version.count
)
on btn7 pressed do
(
version = maxOps.licenseBehavior as string
edt7.text = substring version 16 version.count
)
on btn8 pressed do
edt8.text = (hardwarelockid as string)
)
rof = newRolloutFloater "License Status" 230 380
addRollout CdillaOPS rof