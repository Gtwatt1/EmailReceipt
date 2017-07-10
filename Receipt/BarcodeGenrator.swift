//
//  File.swift
//  Receipt
//
//  Created by Zone 3 on 7/10/17.
//  Copyright © 2017 Zone 3. All rights reserved.
//

import CoreImage
import UIKit


class BarcodeGenerator {
    
    class func generateBarCode(string : String) -> UIImage? {
        
        let data = string.data(using: .ascii)
        let filter = CIFilter(name: "CICode128BarcodeGenerator")
        filter?.setValue(data, forKey: "inputMessage")
        
        return UIImage(ciImage: (filter?.outputImage)!)
    }
    
}
