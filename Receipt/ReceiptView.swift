//
//  ReceiptView.swift
//  Receipt
//
//  Created by Zone 3 on 7/10/17.
//  Copyright © 2017 Zone 3. All rights reserved.
//

import UIKit
let receiptCell = "tablecell"


class ReceiptView : UIView, UITableViewDelegate, UITableViewDataSource{


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        tableDetails.dataSource = self
        tableDetails.delegate = self
        tableDetails.estimatedRowHeight = 36
        tableDetails.register(TableCell.self, forCellReuseIdentifier: receiptCell)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let topContainer : UIView = {
        let v = UIView()
        v.backgroundColor = .black
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    
    let detailsContainer : UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let barCodeContainer : UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    
    let companylogo : UIImageView = {
        let logo = UIImageView()
        logo.backgroundColor = .white
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let dateLabel : UILabel = {
        let label = UILabel()
        label.text = "08-07-2917"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let barcode : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints =  false
        return iv
    }()
    
    let divider : UIView = {
        let v = UIView()
        v.backgroundColor = .red
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let tableDetails : UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: receiptCell, for: indexPath) as! TableCell
        cell.itemDescription.text = "ear pods"
        cell.itemPrice.text = "$200"
        return cell
    }

//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//    }
//        
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//                <#code#>
//    }
    
    func setupViews(){
        addSubview(topContainer)
        addSubview(detailsContainer)
        addSubview(barCodeContainer)
        addSubview(companylogo)
        addSubview(dateLabel)
        addSubview(barcode)
        addSubview(tableDetails)
        addSubview(divider)

    
        topContainer.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        topContainer.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topContainer.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        topContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
        
        tableDetails.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableDetails.topAnchor.constraint(equalTo: detailsContainer.topAnchor).isActive = true
        tableDetails.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableDetails.heightAnchor.constraint(equalTo: detailsContainer.heightAnchor).isActive = true
        
        
        companylogo.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        companylogo.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor).isActive = true
        companylogo.widthAnchor.constraint(equalToConstant: 40).isActive = true
        companylogo.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        dateLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        dateLabel.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor).isActive = true
        dateLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        detailsContainer.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        detailsContainer.topAnchor.constraint(equalTo: topContainer.bottomAnchor ).isActive = true
        detailsContainer.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        detailsContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
        
        barCodeContainer.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        barCodeContainer.bottomAnchor.constraint(equalTo: bottomAnchor ).isActive = true
        barCodeContainer.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        barCodeContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
        
        
        divider.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        divider.bottomAnchor.constraint(equalTo: detailsContainer.bottomAnchor ).isActive = true
        divider.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        divider.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        barcode.centerYAnchor.constraint(equalTo: barCodeContainer.centerYAnchor).isActive = true
        barcode.centerXAnchor.constraint(equalTo: barCodeContainer.centerXAnchor ).isActive = true
        barcode.widthAnchor.constraint(equalToConstant: 240).isActive = true
        barcode.heightAnchor.constraint(equalToConstant: 64).isActive = true
    }
}


class TableDetailsHeader : UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let itemDescription : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let itemPrice : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews(){
    
    
    }
}

class TableDetailsFooter: TableDetailsHeader {
    
}

class TableCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: receiptCell)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let itemDescription : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let itemPrice : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews(){
        
        addSubview(itemPrice)
        addSubview(itemDescription)
        
        itemDescription.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        itemDescription.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        itemDescription.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
        itemDescription.heightAnchor.constraint(equalToConstant: 24).isActive = true

        itemPrice.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        itemPrice.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        itemPrice.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.4).isActive = true
        itemPrice.heightAnchor.constraint(equalToConstant: 24).isActive = true
    }
}












