-- CREATE_OBJECT
local retval --[[ https://gta-objects.xyz/ ]] =
	CreateObject(
		modelHash `prop_atm_01`
		x 925.329,
		y 46.152,
		z 80.908,
		isNetwork 'True', 
		netMissionEntity "True",
		)

        local modelHash =  `prop_atm_01`

if not HasModelLoaded() then
    -- If the model isnt loaded we request the loading of the model and wait that the model is loaded
    RequestModel(`prop_atm_01`)

    while not HasModelLoaded() do
        Citizen.Wait(1)
    end
end

-- At this moment the model its loaded, so now we can create the object
local obj = CreateObject(`prop_atm_01`, vector3(925.329, 46.152, 80.908,) true)
