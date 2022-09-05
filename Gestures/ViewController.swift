//
//  ViewController.swift
//  Gestures
//
//  Created by sameeltariq on 05/09/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handlePan(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)

          // 2
          guard let gestureView = gesture.view else {
            return
          }

          gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
          )

          // 3
          gesture.setTranslation(.zero, in: view)
    }
    
    @IBAction func handlePan2(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)

          // 2
          guard let gestureView = gesture.view else {
            return
          }

          gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
          )

          // 3
          gesture.setTranslation(.zero, in: view)
    }
    @IBAction func handlePan3(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)

          // 2
          guard let gestureView = gesture.view else {
            return
          }

          gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
          )

          // 3
          gesture.setTranslation(.zero, in: view)
    }
    @IBAction func handlePan4(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)

          // 2
          guard let gestureView = gesture.view else {
            return
          }

          gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
          )

          // 3
          gesture.setTranslation(.zero, in: view)
    }
    
    @IBOutlet weak var delete: UIImageView!
 
    }
    
  

