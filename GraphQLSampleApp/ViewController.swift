//
//  ViewController.swift
//  GraphQLSampleApp
//
//  Created by Juan Ticante Vicente on 13/12/22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    fetch()
  }
  
  func fetch() {
    Network.shared.apollo.fetch(query: LaunchListQuery()) { result in
      switch result {
      case .success(let graphQLResult):
        print("Success! Result: \(graphQLResult)")
      case .failure(let error):
        print("Failure! Error: \(error)")
      }
    }
  }
  
}

