//
//  LaunchView.swift
//  LaunchAnimation
//
//  Created by Alex Paul on 2/19/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class AnimationView: UIView {
  
  @IBOutlet var contentView: UIView!
  @IBOutlet weak var launchImageView: CircularImageView!
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  private func commonInit() {
    Bundle.main.loadNibNamed("AnimationView", owner: self, options: nil)
    addSubview(contentView)
    contentView.frame = bounds
    contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
  }
}
