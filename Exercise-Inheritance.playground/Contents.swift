//Base Class to encapsulate dish-related data and functionalities.
class Dish{
    //Private properties. This makes the properties only accessible to the enclosing entity, which is the Dish class instance.
        private var ingredients : [String]
        private let name:String
    // Create a memberwise initializer to initialize the name and ingredients properties.
    init(name:String, ingredients:[String]) {
        self.name = name
        self.ingredients = ingredients
        }
    //Method to Print Info
        func printInfo(){
            print(name)
            print(ingredients)
        }
    }
    

    
    //Subclass the base class
final class AppetizerDish:Dish{
    //Override the bass class method to alter the bass class
    override func printInfo(){
        print("Appetizer")
        super.printInfo()
    }
    
}

final class MainDish:Dish{
  }


for _ in 0...5{
    
//    Create a Random Dish
    let randomnumber=Int.random(in: 0...1)
    let dish:Dish
    if  randomnumber==0{
      dish=AppetizerDish(
        name: "Margherita Flatbread",
        ingredients:["Margherita","Flatbread"])
    } else {
        dish=MainDish(
        name: "Super Spaguetti",
        ingredients: ["Spaguetti","Tomato Sauce"])
    }
        
//    Downcasting Dish
   if let appetizerDish = dish as? AppetizerDish {
            appetizerDish.printInfo()
        }
        if dish is MainDish {
            print("Main Dish!")
        }
   
}




