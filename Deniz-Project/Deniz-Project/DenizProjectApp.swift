
import SwiftUI

@main
struct ToDoListApp: App {
    
    let persistanceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistanceController.container.viewContext)
        }
    }
}
