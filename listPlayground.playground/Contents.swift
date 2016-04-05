//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class List{
    
    var name: String
    var owner: Owner
    
    var lists: [List] = []
    var description: String?
    var category: Category?
    
    init(name: String, owner: Owner){
        self.name = name
        self.owner = owner
    }
    
    func addItem(item: List){
        lists.append(item)
    }
    
    func addItem(item: String){
        addItem(List(name: item, owner: owner))
    }
    
    func addCategory(cat: Category){
        category = cat
    }

}

struct Owner{
    var name: String
    var uniqueId: String
    
    init(name: String, uniqueId: String){
        self.name = name
        self.uniqueId = uniqueId
    }
}

struct Category{
    var name: String
    
    init(name: String){
        self.name = name
    }
}

let uuid = NSUUID().UUIDString
let gabryel = Owner(name: "Gabryel Monteiro", uniqueId: uuid)
let baseList = List(name: "Lista do Mercado", owner: gabryel)

baseList.addItem("Batata")
baseList.addItem("Donuts")
baseList.addItem("Sanduíche")

let food = Category(name: "Comida")

for item in baseList.lists {
    //item.addCategory(food)
    let category = item.category?.name ?? ""
    print(item.name + category)
}



