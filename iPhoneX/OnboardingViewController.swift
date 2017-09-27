//
//  OnboardingViewController.swift
//  iPhoneX
//
//  Created by Blake Merryman on 9/26/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    lazy var imageView: UIImageView = {
        let image = #imageLiteral(resourceName: "emoji_thinking")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Preparing for iPhone X"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 30.0)
        return label
    }()

    lazy var descriptionLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Are you ready for the new layout?\n\n( You're probably really close! )"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20.0)
        label.numberOfLines = 0
        return label
    }()

    lazy var continueButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20.0)
        button.layer.borderWidth = 2.0
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.cornerRadius = 10.0
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(continueButton)

        NSLayoutConstraint.activate([

            // Image view...
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: UIApplication.shared.statusBarFrame.height),
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16.0),
            imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16.0),
            imageView.heightAnchor.constraint(equalToConstant: view.bounds.height / 2.0),

            // Title label...
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8.0),
            titleLabel.leftAnchor.constraint(equalTo: imageView.leftAnchor),
            titleLabel.rightAnchor.constraint(equalTo: imageView.rightAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: view.bounds.height / 16.0),

            // Description label...
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0),
            descriptionLabel.leftAnchor.constraint(equalTo: imageView.leftAnchor),
            descriptionLabel.rightAnchor.constraint(equalTo: imageView.rightAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: continueButton.topAnchor, constant: -8.0),

            // Continue button...
            continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16.0),
            continueButton.widthAnchor.constraint(equalToConstant: view.bounds.width * 0.75),
            continueButton.heightAnchor.constraint(equalToConstant: view.bounds.height / 16.0),
            ])
    }
}
