import Foundation
import RealmSwift

// Родительский класс
class Category: Object {
    
    @objc dynamic var name: String = ""
    @objc dynamic var colorCategory: String = ""
    
    // устанавливаем связь между классами
    // List - это аналог array от realm
    let items = List<Item>()
}

