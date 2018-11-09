local function clearScreen()
   for i = 1,25 do
      print("\n\n")
   end
end

local function showSituation(locale)

   print(locale.name)
   print()
   print(locale.situation)
   print()
end

local function showOptions(location)
   for i = 1, 3 do
      print(location.options[i].desc)
   end
   print()
end

local function getChoice(location)
   local choice
   repeat
      io.write("What do you want to do? ")
      io.flush()
      choice = io.read()
   until choice == "1" or choice == "2" or choice == "3" or choice == "exit"

   if choice == "exit" then
      os.exit()
   end
   
   return data[location.options[tonumber(choice)].loc]
end

local function go(locale)
   clearScreen()
   showSituation(locale)
   showOptions(locale) 
   location = getChoice(locale)
end

function startGame(data)
   gameFinished = false
   location = data.Home
   repeat
      go(location)
   until gameFinished == true
end


print("Engine loaded")
