//
//  Accesibility.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/23/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit

//TODO: - Go back through app and fully implement where necessary
protocol Accessible {
    func setAccessibility(label: String, value: String?, hint: String?)
}

extension Accessible where Self: UIView {
    func setAccessibility(label: String, value: String? = nil, hint: String? = nil) {
        accessibilityLabel = label
        accessibilityValue = value
        accessibilityHint = hint
    }

    // Not all views will need this, hence why it's not required to conform
    func initCustomAccessibility(with traits: UIAccessibilityTraits) {
        isAccessibilityElement = true
        accessibilityTraits = traits
    }
}
