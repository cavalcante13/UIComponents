//
//  CreateAccountViewController.swift
//  madalena
//
//  Created by Diego Costa on 06/09/22.
//  Copyright © 2022 Diego Cavalcante Costa. All rights reserved.
//

import UIKit

final class CreateAccountViewController: UIViewController {
    
    @IBOutlet
    private weak var nameTextFieldView: UICTextFieldView!
    
    @IBOutlet
    private weak var emailTextFieldView: UICTextFieldView!
    
    @IBOutlet
    private weak var cellphoneTextFieldView: UICTextFieldView!
    
    @IBOutlet
    private weak var passwordFieldView: UICTextFieldView!
    
    @IBOutlet
    private weak var passwordConfirmTextFieldView: UICTextFieldView!
    
//    @IBOutlet
//    private weak var checkBoxView: BEMCheckBox!
    
    @IBOutlet
    private weak var createButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Criar conta"
        self.prepareLayout()
    }

    private func prepareLayout() {
//        self.nameTextFieldView.delegate = self
//        self.emailTextFieldView.delegate = self
//        self.cellphoneTextFieldView.delegate = self
//        self.passwordFieldView.delegate = self
//        self.passwordConfirmTextFieldView.delegate = self
//
//        self.nameTextFieldView.keyboard(type: .namePhonePad)
//        self.emailTextFieldView.keyboard(type: .emailAddress)
//        self.cellphoneTextFieldView.keyboard(type: .numberPad)
//
//        self.passwordFieldView.setIsSecureText(entry: true)
//        self.passwordFieldView.rightImage = .init(named: "eye_show")
//        self.passwordFieldView.rightImageAction = { [weak self] imageView in
//            guard let self = self else {
//                return
//            }
//            self.passwordFieldView.setIsSecureText(entry: !self.passwordFieldView.isSecureEntry)
//            self.passwordFieldView.rightImage = self.passwordFieldView.isSecureEntry ? .init(named: "eye_show") : .init(named: "eye_hide")
//        }
        
//        self.passwordConfirmTextFieldView.setIsSecureText(entry: true)
//        self.passwordConfirmTextFieldView.rightImage = .init(named: "eye_show")
//        self.passwordConfirmTextFieldView.rightImageAction = { [weak self] imageView in
//            guard let self = self else {
//                return
//            }
//            self.passwordConfirmTextFieldView.setIsSecureText(entry: !self.passwordConfirmTextFieldView.isSecureEntry)
//            self.passwordConfirmTextFieldView.rightImage = self.passwordConfirmTextFieldView.isSecureEntry ? .init(named: "eye_show") : .init(named: "eye_hide")
//        }
        
//        self.checkBoxView.delegate = self
//        self.checkBoxView.boxType = .square
//        self.checkBoxView.onFillColor = .black
//        self.checkBoxView.onTintColor = .black
//        self.checkBoxView.onCheckColor = .white
//        self.checkBoxView.borderColor = .groupTableViewBackground
        
//        self.createButton.setBackgroundColor(.black, for: .normal)
//        self.createButton.setBackgroundColor(.lightText, for: .disabled)
        
//        self.setLeftNavigationItem(image: .init(systemName: "xmark")) { [weak self] in
//            self?.dismiss(animated: true, completion: nil)
//        }
    }
    
    func configureBindings() {
       
    }
    
    @IBAction
    private func loginAction(_ sender: UIButton) {
        self.dismiss(animated: true) {
//            let viewController = LoginViewController()
//            let navigationController = AppNavigationController(rootViewController: viewController)
//            navigationController.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4020722168)
//            AppDelegate.shared?.window?.rootViewController?.present(navigationController, animated: true, completion: nil)
        }
    }
    
    deinit {
        print(self)
    }
}

//extension CreateAccountViewController: TextFieldViewDelegate {
//    func textFieldViewDidChange(view: TextFieldView, text: String) {
//
//    }
//
//
////    func textFieldViewDidChange(view: TextFieldView, text: String) {
////        if view == nameTextFieldView {
////            vm.name.on(.next(text))
////        }else if view == emailTextFieldView {
////            vm.email.on(.next(text))
////        }else if view == cellphoneTextFieldView {
////            vm.phone.on(.next(text))
////        }else if view == passwordFieldView {
////            vm.pass.on(.next(text))
////        }else if view == passwordConfirmTextFieldView {
////            vm.confirmPass.on(.next(text))
////        }
////    }
//}

//extension CreateAccountViewController: BEMCheckBoxDelegate {
////    func didTap(_ checkBox: BEMCheckBox) {
////        vm.isIgree.on(.next(checkBox.on))
////    }
//}
