//
//  FixedOnboardingViewController.swift
//  iPhoneX
//
//  Created by Blake Merryman on 9/27/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

class FixedOnboardingViewController: OnboardingViewController {

    override func configureConstraints() {

        guard #available(iOS 11, *) else {
            super.configureConstraints()
            return
        }

        NSLayoutConstraint.activate([

            // Image view...
            // The Fix: Ensure we're using safeAreaLayoutGuides
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            imageView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),

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
            // The Fix: Ensure we're using safeAreaLayoutGuides
            continueButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            continueButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            continueButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75),
            continueButton.heightAnchor.constraint(equalToConstant: view.bounds.height / 16.0),
            ])
    }
    
}
