-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

M.check_proximity = function(object_pos, point, distance)
	local x_check = true
	local y _check = true
	if object_pos.x >= point.x + distance or object_pos.x <= point.x - distance then
		x_check = false
	else
		return true
	end
	if object_pos.y >= point.y + distance or object_pos.y <= point.y - distance then
		y_check = false
	else
		return true
	end
	return x_check and y_check
end

M.calculate_trajectory = function(object_pos, point)
	local x = point.x - object_pos.x
	local y = point.y - object_pos.y
	x = math.floor((x / 100) + 0.5) / 10
	y = math.floor((y / 100) + 0.5) / 10
	return vmath.vector3(x, y, 0)
end

return M
