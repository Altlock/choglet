data = {
   Home = {
      name = "Home",
      situation = "You're at home",
      options = {
	 {desc = "Go to school", loc = "School"},
	 {desc = "Go to work", loc = "Work"},
	 {desc = "Go to a shop", loc = "Shop"}}
   },
   School = {
      name = "School",
      situation = "You're at school",
      options = {
	 {desc = "Go home", loc = "Home"},
	 {desc = "Go to work", loc = "Work"},
	 {desc = "Go to a shop", loc = "Shop"}}
   },
   Work = {
      name = "Your work",
      situation = "You're at your work, being bored to death",
      options = {
	 {desc = "Go home", loc = "Home"},
	 {desc = "Go to school", loc = "School"},
	 {desc = "Go to a shop", loc = "Shop"}}
   },
   Shop = {
      name = "A shop across the street from your house",
      situation = "You're at that shop you like",
      options = {
	 {desc = "Go home", loc = "Home"},
	 {desc = "Go to work", loc = "Work"},
	 {desc = "Go to school", loc = "School"}}
   }
}
print("Data loaded")
