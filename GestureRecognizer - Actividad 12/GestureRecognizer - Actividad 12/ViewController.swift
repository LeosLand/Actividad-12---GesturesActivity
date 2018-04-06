//
//  ViewController.swift
//  GestureRecognizer - Actividad 12
//
//  Created by Alumno IDS on 03/04/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

var origen:CGRect? = nil
class ViewController: UIViewController {
@IBOutlet weak var image: UIImageView!
@IBOutlet weak var image2: UIImageView!
var contador = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(animacion(tapGestureRecognizer:)))
        image.isUserInteractionEnabled = true
        image.addGestureRecognizer(tapGestureRecognizer)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func animacion(tapGestureRecognizer : Any) {
        UIView.animate(withDuration: 1, animations:{
            if(self.contador == 0){
            self.view.backgroundColor = .black
                origen = self.image.frame
                self.image.frame = CGRect(x: self.view.center.x-207, y: self.view.center.y-140, width: self.view.bounds.width, height: 200)
            self.contador = 1}
            else{
                print(self.view.center.x)
                print(self.view.center.y)
                self.view.backgroundColor = .white
                self.image.frame = origen!
            self .contador = 0
            }
        }, completion: nil)
    }
}

