//
//  LaunchViewController.swift
//  LaunchAnimation
//
//  Created by Alex Paul on 2/19/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
  
  @IBOutlet var launchView: AnimationView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    UIView.animate(withDuration: 2.0, delay: 2.0, options: [], animations: {
      self.launchView.launchImageView.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
    }) { (done) in
      let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
      let viewController = mainStoryboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
      viewController.modalTransitionStyle = .crossDissolve
      viewController.modalPresentationStyle = .overCurrentContext
      self.present(viewController, animated: true)
    }
  }
  
}
