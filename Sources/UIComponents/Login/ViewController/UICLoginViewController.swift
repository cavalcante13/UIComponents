//
//  LoginViewController.swift
//  madalena
//
//  Created by Diego on 12/08/21.
//

import UIKit

public final class UICLoginViewController: UIViewController {

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [emailTextFieldView, passwordTextFieldView, createAccountLabel, termsLabel])
        stackView.spacing = 8
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = .init(top: 64, left: 16, bottom: 16, right: 16)
        stackView.setCustomSpacing(24, after: passwordTextFieldView)
        stackView.setCustomSpacing(44, after: createAccountLabel)
        return stackView
    }()
    
    private lazy var emailTextFieldView: UICTextFieldView = {
        let textField = UICTextFieldView(title: "E-mail", placeholder: "nome@email.com")
        return textField
    }()
    
    private lazy var passwordTextFieldView: UICTextFieldView = {
        let textField = UICTextFieldView(title: "Senha", placeholder: "123456")
        return textField
    }()
    
    private lazy var createAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Você não tem uma conta? Criar conta"
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var termsLabel: UILabel = {
        let label = UILabel()
        label.text = "Aceito os Termos e Condições da Políticas de Privacidade da Flicks corporation."
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var loginButton = UICButton(title: "Enviar")
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViewHierarchy()
        setupConstraints()
    }

    private func addViewHierarchy() {
        view.addSubview(scrollView)
        view.addSubview(loginButton)
        scrollView.addSubview(stackView)
    }
    
    private func setupConstraints() {
        scrollView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(64)
            make.left.right.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        stackView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(scrollView.snp.bottom)
            make.left.right.equalToSuperview().inset(16)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.height.equalTo(54)
        }
        
        emailTextFieldView.snp.makeConstraints { make in
            make.height.equalTo(58)
        }
        
        passwordTextFieldView.snp.makeConstraints { make in
            make.height.equalTo(58)
        }
    }
    
    private func prepareLayout() {
//        self.emailTextFieldView.delegate = self
//
//        self.emailTextFieldView.keyboard(type: .emailAddress)
//        self.passwordFieldView.delegate = self
//        self.passwordFieldView.setIsSecureText(entry: true)
//        self.passwordFieldView.rightImage = .init(named: "eye_show")
//        self.passwordFieldView.rightImageAction = { [weak self] imageView in
//            guard let self = self else {
//                return
//            }
//            self.passwordFieldView.setIsSecureText(entry: !self.passwordFieldView.isSecureEntry)
//            self.passwordFieldView.rightImage = self.passwordFieldView.isSecureEntry ? .init(named: "eye_show") : .init(named: "eye_hide")
//        }
        
//        self.checkBoxView.delegate = self
//        self.checkBoxView.boxType = .square
//        self.checkBoxView.onFillColor = .black
//        self.checkBoxView.onTintColor = .black
//        self.checkBoxView.onCheckColor = .white
//        self.checkBoxView.borderColor = .groupTableViewBackground
       
//        self.loginButton.setBackgroundColor(.black, for: .normal)
//        self.loginButton.setBackgroundColor(.lightText, for: .disabled)
        
//        self.setLeftNavigationItem(image: .init(systemName: "xmark")) { [weak self] in
//            self?.dismiss(animated: true, completion: nil)
//        }
    }
    
    func configureBindings() {
       
    }
    
    @IBAction
    private func createAccountAction(_ sender: UIButton) {
        self.dismiss(animated: true) {
            let viewController = CreateAccountViewController()
//            let navigationController = AppNavigationController(rootViewController: viewController)
//            navigationController.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4020722168)
//            AppDelegate.shared?.window?.rootViewController?.present(navigationController, animated: true, completion: nil)
        }
    }
}
//
//extension LoginViewController: TextFieldViewDelegate {
//
//    func textFieldViewDidChange(view: TextFieldView, text: String) {
//
//    }
//}
