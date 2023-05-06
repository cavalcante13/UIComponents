//
//  Validator.swift
//  Pedeja
//
//  Created by Diego Cavalcante Costa on 08/09/20.
//

import Foundation

public enum TextValidator {
    case name
    case email
    case empty
    case phone

    public func isValid(text: String) -> Bool {
        switch self {
        case .phone:
            return text.count == 11
        case .empty:
            return !text.isEmpty
        case .name:
            return text.count >= 3
        case .email:
            let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let predicate = NSPredicate(format:"SELF MATCHES %@", regex)
            return predicate.evaluate(with: text)
        }
    }
}
