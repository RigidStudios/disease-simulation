day = 0
infected = 1
notInfected = 9

while infected < 10 do
  math.randomseed(os.time() - 220 / 35 * 1000 / 37)
  
  chanceOfInfection = math.random(1, 100) -- 75%
  chanceOfDeath = math.random(1, 100) -- 55%
  chanceOfNaturalDeath = math.random(1, 100) -- 35%

  if chanceOfInfection <= 75 then
    infected = infected + 1
    notInfected = notInfected - 1
  end
  
  if chanceOfDeath <= 55 then
    infected = infected - 1
  end
  
  if chanceOfNaturalDeath <= 35 then
    notInfected = notInfected - 1
  end
  
  print("Day: " .. day .. " Infected: " .. infected .. " Not Infected: " .. notInfected)
  
  day = day + 1
end
