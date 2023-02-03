--tilt sensor
dist = {}
azim = {}
elev = {}
time = {}
target = 0
targets = {}
function onTick()
for i = 1,8 do
dist[i] = input.getNumber(i*4-3)
azim[i] = input.getNumber(i*4-2)
elev[i] = input.getNumber(i*4-1)
time[i] = input.getNumber(i*4)
targets[i] = input.getBool(i)
end
for i = 1,8 do
if dist[i] > 10 then target = i break else target = 0
end
end
if time[target] > 1.5 then trigger = true else trigger = false
if target > 0 then
output.setbool(1,trigger)
output.setNumber(1,dist[target])
output.setNumber(2,azim[target])
output.setNumber(3,elev[target])
output.setNumber(4,time[target])
end
end
