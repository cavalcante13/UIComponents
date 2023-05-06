//
//  File.swift
//  
//
//  Created by Diego Cavalcante on 06/05/23.
//

import Foundation
import UIKit

final class UICButton: UIButton {
    
    public init(title: String) {
        super.init(frame: .zero)
        backgroundColor = .black
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .boldSystemFont(ofSize: 18)
        layer.cornerRadius = 8
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
