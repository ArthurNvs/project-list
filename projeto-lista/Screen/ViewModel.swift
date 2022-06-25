
import Foundation

public class ViewModel: ScreenProtocol {
    var coordinator: MainCoordinator
    
    let names = ["Arthur", "Rodrigo", "Bruno", "Jorge", "Camila", "Daniel", "Carolina", "Matheus", "Catarina", "Silvana"]
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
    }
    
    public func didTapListCell(name: String) {
        coordinator.openAlert(text: name)
    }
}

public protocol ScreenProtocol {
    
    func didTapListCell(name: String)
    
}
