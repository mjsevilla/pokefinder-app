//
//  SlideInPresentationManager.swift
//  PokeFinder
//
//  Created by Mike Sevilla on 1/20/17.
//  Copyright © 2017 Mike Sevilla. All rights reserved.
//

import UIKit

enum PresentationDirection {
    case bottom
}

extension SlideInPresentationManager: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        
        let presentationController = SlideInPresentationController(presentedViewController: presented, presenting: presenting, direction: direction)
        
        return presentationController
    }
}

class SlideInPresentationManager: NSObject {
    var direction = PresentationDirection.bottom
}
