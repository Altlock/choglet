local function clearScreen()
   for i = 1,25 do
      print("\n\n")
   end
end

local function ask(question)
   io.write(question .. " ")
   io.flush()
   return io.read()
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
   while true do
      choice = tonumber(ask("What do you want to do?"))

      if choice == 0 then
	 os.exit()
      end

      if choice == nil or choice < 0 or choice > 3 then
	 print("That's not a choice")
      elseif data[location.options[tonumber(choice)].loc] == nil then
	 error("Choice contains no location!")
      else
	 return data[location.options[tonumber(choice)].loc]
      end
   end
end

local function go(locale)
   clearScreen()
   showSituation(locale)
   showOptions(locale) 
   location = getChoice(locale)
end

local function startscreen()
   print("\n\n")
   print("To choose, enter either 1, 2 or 3.")
   print("To exit the game, you can enter '0'")
   print()
   print("Press 'Enter' to start!")
   
   io.read()
end

function startGame(data)
	 startscreen()
	 
	 gameFinished = false
	 location = data.Home
	 repeat
      go(location)
   until gameFinished == true
end


print("Engine loaded")
