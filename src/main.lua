day = 0
infected = 1
notInfected = 9

while infected < 10 and infected > 0 and notInfected > 0 do
  math.randomseed(math.floor(os.time() - 220 / 35 * 1000 / 37 * 100000))
  
  chanceOfInfection = math.random(1, 100) -- 75%
  chanceOfDeath = math.random(1, 100) -- 55%
  chanceOfNaturalDeath = math.random(1, 100) -- 20%

  if chanceOfInfection <= 75 then
    infected = infected + 1
    notInfected = notInfected - 1
  end
  
  if chanceOfDeath <= 55 then
    infected = infected - 1
  end
  
  if chanceOfNaturalDeath <= 20 then
    notInfected = notInfected - 1
  end
  
  print(string.format("--- Day %s ---\nInfected: %s\nNot Infected: %s\n", day, infected, notInfected))

  
  day = day + 1
end
