//
//  ViewController.swift
//  projeto-lista
//
//  Created by Arthur Monteiro on 25/06/22.
//

import UIKit

class ViewController: UITableViewController {
    public var vmFactory: ViewModel?

    init(viewModel: ViewModel) {
        self.vmFactory = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    public override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { 10 }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Names", for: indexPath)
        
        cell.textLabel?.text = "\(vmFactory?.names[indexPath.row])"

        return cell
    }
    
    public override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Nomes"
    }
}

extension ViewController {
    
    static func makeViewController(coordinator: MainCoordinator) -> ViewController {
        let vc = ViewController.instance()
        vc.vmFactory = ViewModel(coordinator: coordinator)
        return vc
    }
    
    public static func instance() -> Self {
        let vcName = String(describing: self)
        let sbName = "Main"
        let bundle = Bundle(for: Self.self)
        let sb = UIStoryboard(name: sbName, bundle: bundle)
        return sb.instantiateViewController(identifier: vcName) as! Self
    }
    
}

