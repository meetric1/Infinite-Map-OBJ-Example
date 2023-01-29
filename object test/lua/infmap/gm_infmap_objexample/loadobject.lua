
// Clear pervious data if it exists
InfMap.clear_parsed_objects()

// Create a matrix to scale the model
local mat = Matrix()
mat:SetTranslation(Vector(0, 0, 0))		// Sets the models position
mat:SetAngles(Angle(0, 0, 0))			// Sets the models rotation
mat:SetScale(Vector(1, 1, 1) * 39.3701)	// Conversion from Meters to Inches

// visuals = 1
// collision = 2

// nocull Shader = No backface culling
// alphatest Shader = Enable transparency on the model

// Create our visual model, note the "1" which means it is ONLY visual
InfMap.parse_obj("cloud", mat, 1, "nocull alphatest")

// Create our physical model, note the "2" which means it is ONLY collision
// Because it is collision, we do not need the shader option
InfMap.parse_obj("cloud_collision", mat, 2)
    
// If you wish to have collision AND visuals combined, you can do so by using "0" or "3"
// Example: InfMap.parse_obj("cloud", mat, 3, "nocull alphatest")
