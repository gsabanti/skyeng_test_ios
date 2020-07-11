//
//  Extensions.swift
//  Skyeng Test
//
//  Created by Георгий Сабанов on 11.07.2020.
//  Copyright © 2020 Georgiy Sabanov. All rights reserved.
//

import UIKit

extension UIFont {
    var boldVersion: UIFont {
        var font = self
        if let newDescriptor = font.fontDescriptor.withSymbolicTraits(.traitBold) {
            font = UIFont(descriptor: newDescriptor, size: font.pointSize)
        }
        return font
    }
}

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}

extension String {
    var httpsUrl: String {
        "https:" + self
    }
}

extension UIScreen {
    var isPortrait: Bool {
        return bounds.height > bounds.width
    }
}

extension UIView {
    func setBackgroundColor(to color: UIColor) -> UIView {
        self.backgroundColor = color
        return self
    }
}
