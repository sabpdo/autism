//
//  ViewController.swift
//  test2
//
//  Created by Sabrina Do on 8/16/22.
//

import UIKit

class SabrinaViewController: UIViewController {
    
    
    @IBOutlet weak var diceGreen: UIImageView!
    @IBOutlet weak var treeGreen: UIImageView!
    @IBOutlet weak var virusGreen: UIImageView!
    
    @IBOutlet weak var trexGreen: UIImageView!
    @IBOutlet weak var cloverGreen: UIImageView!
    @IBOutlet weak var snailGreen: UIImageView!
    @IBOutlet weak var envelopeRed: UIImageView!
    @IBOutlet weak var roseRed: UIImageView!
    @IBOutlet weak var heartRed: UIImageView!
    @IBOutlet weak var spadeRed: UIImageView!
    @IBOutlet weak var targetRed: UIImageView!
    @IBOutlet weak var boxRed: UIImageView!
    
    private let myView: UIView = {
        let view = UIView(frame: CGRect(x:0, y:0, width: 200, height: 200))
        view.backgroundColor = .link
        view.isUserInteractionEnabled = true
        return view
    }()
    
    private var isDragging = false
    private var isDraggingG1 = false
    private var isDraggingG2 = false
    private var isDraggingG3 = false
    private var isDraggingG4 = false
    private var isDraggingG5 = false
    private var isDraggingG6 = false
    private var isDraggingR1 = false
    private var isDraggingR2 = false
    private var isDraggingR3 = false
    private var isDraggingR4 = false
    private var isDraggingR5 = false
    private var isDraggingR6 = false
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let arrayGreen = [diceGreen, treeGreen, virusGreen, snailGreen, trexGreen, cloverGreen];
        
        let arrayRed = [envelopeRed, roseRed, heartRed, spadeRed, targetRed, boxRed];
        

    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        myView.center = view.center
    }
    
}

extension SabrinaViewController{
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            guard let touch = touches.first else{
                return
            }
            
            
            let location1 = touch.location(in: diceGreen)
            if diceGreen.bounds.contains(location1){
                isDragging = true
                isDraggingG1 = true
            }
            let location2 = touch.location(in: treeGreen)
            if treeGreen.bounds.contains(location2){
                isDragging = true
                isDraggingG2 = true
                self.treeGreen.bringSubviewToFront(myView)
            }
            
            let location3 = touch.location(in: virusGreen)
            if virusGreen.bounds.contains(location3){
                isDragging = true
                isDraggingG3 = true
            }
            
            let location4 = touch.location(in: snailGreen)
            if snailGreen.bounds.contains(location4){
                isDragging = true
                isDraggingG4 = true
            }
            
            let location5 = touch.location(in: trexGreen)
            if trexGreen.bounds.contains(location5){
                isDragging = true
                isDraggingG5 = true
            }
            
            let location6 = touch.location(in: cloverGreen)
            if cloverGreen.bounds.contains(location6){
                isDragging = true
                isDraggingG6 = true
            }
            
            
            let location7 = touch.location(in: envelopeRed)
            if envelopeRed.bounds.contains(location7){
                isDragging = true
                isDraggingR1 = true
            }
            let location8 = touch.location(in: roseRed)
            if roseRed.bounds.contains(location8){
                isDragging = true
                isDraggingR2 = true
            }
            
            let location9 = touch.location(in: heartRed)
            if heartRed.bounds.contains(location9){
                isDragging = true
                isDraggingR3 = true
            }
            
            let location10 = touch.location(in: spadeRed)
            if spadeRed.bounds.contains(location10){
                isDragging = true
                isDraggingR4 = true
            }
            
            let location11 = touch.location(in: targetRed)
            if targetRed.bounds.contains(location11){
                isDragging = true
                isDraggingR5 = true
            }
            
            let location12 = touch.location(in: boxRed)
            if boxRed.bounds.contains(location12){
                isDragging = true
                isDraggingR6 = true
            }
            
            
            
        }
        
        override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            guard isDragging, let touch = touches.first else{
                return
            }
            
            
            let location = touch.location(in: view)
            
            if (isDraggingG1){
                diceGreen.frame.origin.x = location.x
                diceGreen.frame.origin.y = location.y
            }
            if (isDraggingG2){
                treeGreen.frame.origin.x = location.x
                treeGreen.frame.origin.y = location.y
            }
            if (isDraggingG3){
                virusGreen.frame.origin.x = location.x
                virusGreen.frame.origin.y = location.y
            }
            if (isDraggingG4){
                snailGreen.frame.origin.x = location.x
                snailGreen.frame.origin.y = location.y
            }
            if (isDraggingG5){
                trexGreen.frame.origin.x = location.x
                trexGreen.frame.origin.y = location.y
            }
            if (isDraggingG6){
                cloverGreen.frame.origin.x = location.x
                cloverGreen.frame.origin.y = location.y
            }
            
            //Red Items
            if (isDraggingR1){
                envelopeRed.frame.origin.x = location.x
                envelopeRed.frame.origin.y = location.y
            }
            if (isDraggingR2){
                roseRed.frame.origin.x = location.x
                roseRed.frame.origin.y = location.y
            }
            if (isDraggingR3){
                heartRed.frame.origin.x = location.x
                heartRed.frame.origin.y = location.y
            }
            if (isDraggingR4){
                spadeRed.frame.origin.x = location.x
                spadeRed.frame.origin.y = location.y
            }
            if (isDraggingR5){
                targetRed.frame.origin.x = location.x
                targetRed.frame.origin.y = location.y
            }
            if (isDraggingR6){
                boxRed.frame.origin.x = location.x
                boxRed.frame.origin.y = location.y
            }
        }
            
        
        override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            isDragging = false
            
            isDraggingG1 = false
            isDraggingG2 = false
            isDraggingG3 = false
            isDraggingG4 = false
            isDraggingG5 = false
            isDraggingG6 = false
            
            isDraggingR1 = false
            isDraggingR2 = false
            isDraggingR3 = false
            isDraggingR4 = false
            isDraggingR5 = false
            isDraggingR6 = false
            
        }
    

}

