//
//  PayPerLinkTextFieldView.swift
//  Flicks
//
//  Created by Diego Cavalcante Costa on 05/05/23.
//  Copyright © 2023 Flicks. All rights reserved.
//

import UIKit
import SnapKit

public final class UICTextFieldView: UIView, UITextFieldDelegate {
    private lazy var containerView: UIView = .init()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [placeholderLabel, textFieldStackView, lineView])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .fill
        return stackView
    }()
    
    private lazy var placeholderLabel: UILabel = {
        let label = UILabel()
        label.textColor = .darkText
        label.numberOfLines = 1
        label.font = .systemFont(ofSize: 14)
        label.text = title
        label.font = layout.placeholderFont
        return label
    }()
    
    private lazy var textFieldStackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [textField])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = .init(top: 0, left: 4, bottom: 0, right: 4)
        return stackView
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.font = layout.textFieldFont
        textField.textColor = .darkText
        textField.borderStyle = .none
        textField.delegate = self
        textField.addTarget(self, action: #selector(textDidChange(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(textDidBeginEditing(_:)), for: .editingDidBegin)
        textField.addTarget(self, action: #selector(textDidEndEditing(_:)), for: .editingDidEnd)
        return textField
    }()
    
    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .groupTableViewBackground
        return view
    }()
    
    public var maxCharacters: Int = 256
    public var validator: TextValidator = .empty
    private(set) var title: String
    private(set) var placeholder: String
    private(set) var layout: Layout = .init()
    
    public init(title: String, placeholder: String, layout: Layout = .init()) {
        self.title = title
        self.placeholder = placeholder
        self.layout = layout
        super.init(frame: .zero)
        addViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViewHierarchy() {
        addSubview(containerView)
        containerView.addSubview(stackView)
    }
    
    private func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
        
        stackView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
        
        lineView.snp.makeConstraints { make in
            make.height.equalTo(1)
        }
    }
    
    @objc
    private func textDidChange(_ sender: UITextField) {
       updateColors()
    }

    @objc
    private func textDidBeginEditing(_ sender: UITextField) {
        updateColors()
    }

    @objc
    private func textDidEndEditing(_ sender: UITextField) {
        updateColors()
    }

    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""

        guard let stringRange = Range(range, in: currentText) else {
            return false
        }

        let newText = currentText.replacingCharacters(in: stringRange, with: string)

        return newText.count <= maxCharacters
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    private func updateColors() {
        placeholderLabel.textColor = textField.text?.isEmpty == true ? .darkGray : layout.filledColor
        lineView.backgroundColor = textField.text?.isEmpty == true ? .groupTableViewBackground : layout.filledColor
    }
}

extension UICTextFieldView {
    public struct Layout {
        let placeholderFont: UIFont = .systemFont(ofSize: 12)
        let textFieldFont: UIFont = .boldSystemFont(ofSize: 16)
        let filledColor: UIColor = #colorLiteral(red: 0.003921568627, green: 0.4862745098, blue: 0.9215686275, alpha: 1)
        let errorColor: UIColor = .red
        
        public init() {}
    }
}
