Fn SetKeyToInteger t dividing = if t > dividing then t = Ceil t.Frame    else t= Floor t.Frame

MapKeys $ SetKeyToInteger 0.5 #allKeys

--处理非整数帧
globa