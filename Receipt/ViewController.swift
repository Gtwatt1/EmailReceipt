//
//  ViewController.swift
//  Receipt
//
//  Created by Zone 3 on 7/10/17.
//  Copyright © 2017 Zone 3. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
            setupViews()
        view.backgroundColor = .blue
        
        receipt.barcode.image = BarcodeGenerator.generateBarCode(string: "i love u")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let receipt : ReceiptView = {
        let r = ReceiptView()
        r.translatesAutoresizingMaskIntoConstraints = false
        r.backgroundColor = .red
        return r
    }()

    func setupViews(){
        view.addSubview(receipt)
        receipt.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        receipt.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        receipt.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier : 0.8).isActive = true
        receipt.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
    }
    

    
    


}

