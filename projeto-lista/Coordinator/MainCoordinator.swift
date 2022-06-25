import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navCon: UINavigationController
    
    public init(navCon: UINavigationController) {
        self.navCon = navCon
    }
    
    func start() {
        navCon.pushViewController(ViewController.makeViewController(coordinator: self), animated: true)
    }
    
    func openAlert(text: String) {
        print(text)
    }
    
}
