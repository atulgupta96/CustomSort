import UIKit

struct CustomModel {
    var image: String
    var order: Int
    var title: String
}

var list = [CustomModel]()

list.append(CustomModel(image: "https://dummyimage.com/200x200/fff/000.jpg&text=2", order: 2, title: "Two"))
list.append(CustomModel(image: "https://dummyimage.com/200x200/fff/000.jpg&text=8", order: 8, title: "Eight"))
list.append(CustomModel(image: "https://dummyimage.com/200x200/fff/000.jpg&text=5", order: 5, title: "Five"))
list.append(CustomModel(image: "https://dummyimage.com/200x200/fff/000.jpg&text=1", order: 1, title: "One"))
list.append(CustomModel(image: "https://dummyimage.com/200x200/fff/000.jpg&text=7", order: 7, title: "Seven"))
list.append(CustomModel(image: "https://dummyimage.com/200x200/fff/000.jpg&text=6", order: 6, title: "Six"))
list.append(CustomModel(image: "https://dummyimage.com/200x200/fff/000.jpg&text=4", order: 4, title: "Four"))
list.append(CustomModel(image: "https://dummyimage.com/200x200/fff/000.jpg&text=3", order: 3, title: "Three"))

//i = 0
//j
//O (n2)
//O (n log(n))
for i in 0..<list.count {
    for j in i+1..<list.count {
//        print("i = \(i)\n")
//        print("j = \(j)")
        if list[i].order > list[j].order {
            let temp = list[i]
            list[i] = list[j]
            list[j] = temp
        }
    }
}


//a = a + b | 5 + 4 = 9
//b = a - b | 9 - 4 = 5
//a = a - b | 9 - 5 = 4


list.forEach { item in
    print(item.order)
}
