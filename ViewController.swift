//
//  ViewController.swift
//  UXtestApp
//
//  Created by David Perez on 1/3/19.
//  Copyright © 2019 David Perez P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backView : UIView = {
        let b = UIView()
        b.backgroundColor = UIColor(displayP3Red: 144/255, green: 117/255, blue: 126/255, alpha: 1)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()

    let SaleButton : ShapeView = {
       let shape = ShapeView()
        shape.color = .white
       // shape.backgroundColor = .red

        shape.translatesAutoresizingMaskIntoConstraints = false
        return shape
    }()
    
    let refundButton : ShapeView = {
        let shape = ShapeView()
        shape.color = .white
        let transformRotate = CGAffineTransform.init(rotationAngle: CGFloat.pi)
        shape.transform = transformRotate
        shape.translatesAutoresizingMaskIntoConstraints = false
        return shape
    }()
    
    let terminalButton : ShapeView = {
        let shape = ShapeView()
        shape.color = .white
        shape.translatesAutoresizingMaskIntoConstraints = false
        return shape
    }()
    
    let optionButton : ShapeView = {
        let shape = ShapeView()
        shape.color = .white
        let transformRotate = CGAffineTransform.init(rotationAngle: CGFloat.pi)
        shape.transform = transformRotate
        shape.translatesAutoresizingMaskIntoConstraints = false
        return shape
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViews()
    }
    
    func setupViews(){
        view.addSubview(backView)
        view.addSubview(SaleButton)
        view.addSubview(refundButton)
        view.addSubview(terminalButton)
        view.addSubview(optionButton)
        
        backView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        backView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        
        SaleButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        SaleButton.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        SaleButton.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        SaleButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        refundButton.topAnchor.constraint(equalTo: SaleButton.bottomAnchor, constant: -(view.frame.height * 0.1)).isActive = true
        refundButton.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        refundButton.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        refundButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        terminalButton.topAnchor.constraint(equalTo: refundButton.bottomAnchor, constant: -(view.frame.height * 0.15)).isActive = true
        terminalButton.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        terminalButton.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        terminalButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        optionButton.topAnchor.constraint(equalTo: terminalButton.bottomAnchor, constant: -(view.frame.height * 0.1)).isActive = true
        optionButton.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        optionButton.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        optionButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

