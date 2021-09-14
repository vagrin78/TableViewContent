//
//  File.swift
//  
//
//  Created by Vladimir Grin on 14.09.2021.
//

import UIKit
import SkeletionView

// MRAK: SkeletionView -
private protocol ISkeletion {
    var isSkeletion: Bool { get set }
}

extension RowInfo: ISkeletion {
    public func skeletion() -> Self {
        isSkeletion = true
        return self
    }
}

extension UIView: ISkeletion {
    var isSkeletion: Bool {
        get {
            isSkeletonable
        }
        set {
            isSkeletonable = newValue
            if isSkeletonable {
                skeletonCornerRadius = 8
                isUserInteractionDisabledWhenSkeletonIsActive = true
                showAnimatedGradientSkeleton(usingGradient: SkeletonGradient(baseColor: .clouds))
            } else {
                hideSkeleton()
            }
        }
    }
}
