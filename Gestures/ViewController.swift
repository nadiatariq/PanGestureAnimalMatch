//
//  ViewController.swift
//  Gestures
//
//  Created by sameeltariq on 05/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var swipeView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeLeft = UISwipeGestureRecognizer(target: self, action:#selector(handleGesture(gesture: )) )
        swipeLeft.direction = .left
        swipeView.addGestureRecognizer(swipeLeft)
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
    @objc func handleGesture(gesture: UISwipeGestureRecognizer){
        if gesture.direction == .right{
         
            
            print("Swipe right")
        }else if gesture.direction == .left{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
       
            self.navigationController?.pushViewController(vc, animated: true)
            self.modalPresentationStyle = .fullScreen
            print("swipe left")
                  }else if gesture.direction  == .up{
                print("swipe up")
                      }else if gesture.direction == .down{
                    print("swipe down")
                }
    }
    @IBOutlet weak var delete: UIImageView!
 
    }
    
  

