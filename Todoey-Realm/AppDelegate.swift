import UIKit
import RealmSwift


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // Данный метод срабатывает при открытии/запуске приложения
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Для отображения пути хранения realm БД
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        // Данный блок кода нужен, чтобы отловить возможную ошибку по созданию realm в момент загрузки приложения
        do {
            _ = try Realm()
        } catch {
            print("Error initialising new realm, \(error)")
        }
        
        return true
    }
    // Метод срабатывает когда происходит какое-либо событие-прерывание работы приложения, например входящий звонок
    
    func applicationWillResignActive(_ application: UIApplication) {
        
        
    }
    // Метод срабатывает когда приложение не видно на экране (нажали кнопку HOME)
    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    //Метод срабатывает когда система завершает работу приложени (пример. пользователь запустил игру, а наше приложение было свернуто (в бэкграунде), система решила завершить работу нашего приложения для высвобождения ресурсов для игры), либо когда пользователь сам завершил работу приложения, либо приложение обновляется, либо ОС обновляется
    func applicationWillTerminate(_ application: UIApplication) {
        
    }
    
}





