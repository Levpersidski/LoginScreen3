//
//  RegisterViewController.swift
//  LoginScreen
//
//  Created by Роман Бакаев on 15.09.2023.
//

import UIKit

//MARK: - RegisterViewController
class RegisterViewController: UIViewController {
    
    //MARK: - Private property
    private let bgView = UIView()
    private let swiftImage = UIImageView()
    
    
    private let firstNameLabel = CustomLabel(title: "First Name")
    private let lastNameLabel = CustomLabel(title: "Last Name")
    private let emailLabel = CustomLabel(title: "Email")
    private let passwordLabel = CustomLabel(title: "Password")
    private let alreadyLabel = CustomLabel(title: "Already onboard?")
    
    
    private let firstNameTF = RegisterTextField(placeholder: "  FirstName")
    private let lastNameTF = RegisterTextField(placeholder: "  LastName")
    
    private let emailTF = RegisterTextField(placeholder: "  Enter Your Email")
    private let passwordTF = RegisterTextField(placeholder: "  Enter your password")
    
    private let registerButton = CustomButton(title: "Register", backgroundColor: .systemCyan, isShadow: true)
    private let logInButton = UIButton()
    
    private let firstNameContainer = UIStackView()
    private let lastNameContainer = UIStackView()
    private let fullNameContainer = UIStackView()
    
    private let emailContainer = UIStackView()
    private let passwordContainer = UIStackView()
    private let logInContainer = UIStackView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    
}

//MARK: - Settings View

private extension RegisterViewController {
    func setupView() {
        view.backgroundColor = .systemYellow
        addSubview()
        setupBackgroundView()
        setuplogoImage()
        setupLogInButton()
        
        
        setupVerticalConteiner(stackView: emailContainer, topLabel: emailLabel, bottomTF: emailTF)
        setupVerticalConteiner(stackView: passwordContainer, topLabel: passwordLabel, bottomTF: passwordTF)
        
        setupVerticalConteiner(stackView: firstNameContainer, topLabel: firstNameLabel, bottomTF: firstNameTF)
        setupVerticalConteiner(stackView: lastNameContainer, topLabel: lastNameLabel, bottomTF: lastNameTF)
        
        setupHorintalContainer()
        setuploginContainer()
        
        setupLayout()
        
        
    }
    
}
//MARK: - Setting

private extension RegisterViewController {
    func addSubview() {
        [bgView, swiftImage, registerButton, firstNameContainer, lastNameContainer, emailContainer, passwordContainer, fullNameContainer, logInContainer] .forEach { subview in
            view.addSubview(subview)
        }
    }
    
    func setupBackgroundView() {
        bgView.backgroundColor = .mainBackground
    }
    
    func setuplogoImage() {
        swiftImage.image = UIImage(named: "logIn")
        swiftImage.contentMode = .scaleAspectFit
    }
    
    func setupLogInButton() {
        logInButton.setTitle("Log in", for: .normal)
        logInButton.setTitleColor(.systemPink, for: .normal)
        logInButton.setTitleColor(.highlightedColor, for: .highlighted)
        logInButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
    }
    
    //MARK: - Setup StackView
    func setupVerticalConteiner(stackView:UIStackView, topLabel:UILabel,bottomTF:UITextField){
        stackView.axis = .vertical
        
        stackView.addArrangedSubview(topLabel)
        stackView.addArrangedSubview(bottomTF)
        
    }
    
    func setupHorintalContainer() {
        fullNameContainer.axis = .horizontal
        fullNameContainer.spacing = 30
        fullNameContainer.distribution = .fillProportionally
        
        fullNameContainer.addArrangedSubview(firstNameContainer)
        fullNameContainer.addArrangedSubview(lastNameContainer)
    }
    
    func setuploginContainer() {
        logInContainer.axis = .horizontal
        logInContainer.addArrangedSubview(alreadyLabel)
        logInContainer.addArrangedSubview(logInButton)
    }
    
}

//MARK: - Layout
private extension RegisterViewController {
    
    func setupLayout() {
        
        [bgView, swiftImage, firstNameLabel, lastNameLabel, emailLabel, passwordLabel, alreadyLabel, firstNameTF, lastNameTF, emailTF, passwordTF, registerButton, logInButton, firstNameContainer, lastNameContainer, fullNameContainer, emailContainer, passwordContainer, logInContainer   ].forEach { subView in
            subView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            
            swiftImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            swiftImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.30),
            swiftImage.heightAnchor.constraint(equalTo: swiftImage.widthAnchor),
            
            bgView.topAnchor.constraint(equalTo: swiftImage.bottomAnchor, constant: 10),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            fullNameContainer.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 30),
            fullNameContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fullNameContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            emailContainer.topAnchor.constraint(equalTo: fullNameContainer.bottomAnchor, constant: 30),
            emailContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            passwordContainer.topAnchor.constraint(equalTo: emailContainer.bottomAnchor, constant: 30),
            passwordContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            registerButton.topAnchor.constraint(equalTo: passwordContainer.bottomAnchor, constant: 30),
            registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            logInContainer.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 20),
            logInContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logInContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            
            
        ])
        
    }
    
}
