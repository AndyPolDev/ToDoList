import Foundation
import RealmSwift

//Дочерний класс
class Item: Object {
    
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    
    // устанавливаем связь c "родительской категорией"
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
