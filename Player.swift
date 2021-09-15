 class Player {
 let name: String
 let game: String
 let age: Int
 
 var playerInfo:String {
     let playerInfo = """
     Player name is \(name).
     He plays \(game)
     He is \(age) years old
     """ 
     return playerInfo 
 }
  
  init(name: String, game: String, age: Int) {
    self.name = name
    self.game = game
    self.age = age
  }
     
 }

 

 protocol PolitePlayer {
   var Friend: [Player] {get}
   var haveAFriend: Bool {get}

   func smile()
   func apologize() -> String       
   }

   class ProfessionalPlayer: Player {
   let experiense: Int
   let retirementAge: Int
   
   init(name: String, game: String, age: Int, experiense: Int, retirementAge: Int ) {
   self.experiense = experiense
   self.retirementAge = retirementAge
   super.init(name: name, game: game, age: age)  
   }
 }

 extension ProfessionalPlayer: PolitePlayer {
   var Friend: [Player] {
     return [Player(name: "Alex", game: "Football", age: 19)]
   }

   var haveAFriend: Bool {
     return !Friend.isEmpty
   }
 
   func smile() {
   print("Let is smile together")
 }                                                     
   func apologize() -> String {
   return "Sorry, friend"
 }

 }

 let player = Player(name: "Alexey", game: "Football", age: 21)
 print(player.playerInfo)
 
 let proPlayer = ProfessionalPlayer(name: "Misha", game: "Tennis", age: 24, experiense: 5, retirementAge: 35)
 print(proPlayer.playerInfo)

 proPlayer.playerInfo

 proPlayer.apologize()

 

 
   
 