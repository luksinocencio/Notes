//
//  FolderCell.swift
//  Notes
//
//  Created by Lucas Inocencio on 17/08/19.
//  Copyright © 2019 Lucas Inocencio. All rights reserved.
//

import UIKit

class FolderCell: UITableViewCell {
    
    var folderData: NoteFolder! {
        didSet {
//            guard let folderData = folderData else { return }
            label.text = folderData.title
            countLabel.text = String(folderData.notes.count)
        }
    }
    
    fileprivate var label: UILabel = {
        let label = UILabel()
        label.text = "Folder title"
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    fileprivate var countLabel: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    fileprivate lazy var stack: UIStackView = {
        let s = UIStackView(arrangedSubviews: [label, countLabel])
        s.translatesAutoresizingMaskIntoConstraints = false
        return s
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.accessoryType = .disclosureIndicator
        
        contentView.addSubview(stack)
        
        stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        stack.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
