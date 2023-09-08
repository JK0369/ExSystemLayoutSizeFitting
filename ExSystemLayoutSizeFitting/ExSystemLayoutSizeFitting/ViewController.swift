//
//  ViewController.swift
//  ExSystemLayoutSizeFitting
//
//  Created by 김종권 on 2023/09/09.
//

import UIKit

class ViewController: UIViewController {
    let containerView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "iOS 앱 개발 알아가기"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let button = UIButton()
        button.setTitle("button", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        containerView.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            label.topAnchor.constraint(equalTo: containerView.topAnchor),
        ])
        
        containerView.addSubview(button)
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            button.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8),
        ])
        
        print(containerView.frame) // .zero
        print(containerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)) // (143.0, 62.333333333333336)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews:", containerView.frame.size)  // (143.0, 62.333333333333336)
    }
}

