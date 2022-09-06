//
//  SecondViewController.swift
//  Gestures
//
//  Created by sameeltariq on 06/09/2022.
//

import UIKit

class SecondViewController: UIViewController {
    private let pinchView: UIView = {
        let pinchView = UIView()
//        pinchView.image = UIImage(named: "cat")
        pinchView.backgroundColor = .systemRed
        return pinchView
    }()
    
    private let size : CGFloat = 200
    override func viewDidLoad() {
        view.addSubview(pinchView)
        pinchView.frame = CGRect(x: 0, y: 0, width: size, height: size)
        pinchView.center = view.center
        super.viewDidLoad()
      addGesture()
    }
    private func addGesture(){
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(gesture: )))
        pinchView.addGestureRecognizer(pinchGesture )
    }
    
    @objc private func handlePinch(gesture: UIPinchGestureRecognizer) {
        if gesture.state == .changed{
            let scale = gesture.scale
//            let frame = pinchView.frame
            pinchView.frame = CGRect(
                x: 0,
                y: 0,
                width: size * scale,
                height: size *  scale)
            print(scale)
            }
        pinchView.center = view.center
    }

    }


