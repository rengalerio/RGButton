//
//  RGButton.swift
//  RGButton
//
//  Created by Palvision Macbook Air on 1/25/21.
//

import Foundation
import UIKit

@IBDesignable
class RGButton: UIButton {
	
	private var cornerMask: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]

	@IBInspectable
	var animates: Bool = true

	@IBInspectable
	var circular: Bool = false {
		didSet {
			updateUI()
		}
	}

	@IBInspectable
	var cornerRadius : CGFloat = 0 {
		didSet {
			if cornerRadius > 0 {
				self.layer.cornerRadius = cornerRadius

			}
		}
	}

	@IBInspectable
	var topLeft: Bool = true {
		didSet {
			if topLeft {
				cornerMask.insert(.layerMinXMinYCorner)
			} else {
				cornerMask.remove(.layerMinXMinYCorner)
			}
			updateUI()
		}
	}

	@IBInspectable
	var topRight: Bool = true {
		didSet {
			if topRight {
				cornerMask.insert(.layerMaxXMinYCorner)
			} else {
				cornerMask.remove(.layerMaxXMinYCorner)
			}
			updateUI()
		}
	}

	@IBInspectable
	var bottomLeft: Bool = true {
		didSet {
			if bottomLeft {
				cornerMask.insert(.layerMinXMaxYCorner)
			} else {
				cornerMask.remove(.layerMinXMaxYCorner)
			}
			updateUI()
		}
	}

	@IBInspectable
	var bottomRight: Bool = true {
		didSet {
			if bottomRight {
				cornerMask.insert(.layerMaxXMaxYCorner)
			} else {
				cornerMask.remove(.layerMaxXMaxYCorner)
			}
			updateUI()
		}
	}

	@IBInspectable
	var borderWidth : CGFloat = 0 {
		didSet {
			self.layer.borderWidth = borderWidth
		}
	}

	@IBInspectable
	var borderColor : UIColor = UIColor.clear {
		didSet {
			self.layer.borderColor = borderColor.cgColor
		}
	}
	
	@IBInspectable
	var shadowColor : UIColor = UIColor.clear {
	   didSet {
		   self.layer.shadowColor = shadowColor.cgColor
	   }
	}

	@IBInspectable
	var shadowRadius : CGFloat = 0 {
	   didSet {
		   self.layer.shadowRadius = shadowRadius
	   }
	}

	@IBInspectable
	var shadowOpacity : Float = 0 {
	   didSet {
		   self.layer.shadowOpacity = shadowOpacity
	   }
	}

	@IBInspectable
	var shadowOffset : CGSize = CGSize(width: 0, height: -1) {
	   didSet {
		   self.layer.shadowOffset = shadowOffset
	   }
	}
	
	@IBInspectable
	var titleLabelColor: UIColor? = UIColor.black {
		didSet {
			updateUI()
		}
	}
	
	@IBInspectable
	var imageTintColor: UIColor? = UIColor.black {
		didSet {
			updateUI()
		}
	}
	
	override var titleLabel: UILabel? {
		get {
			return self.subviews.filter { (view) -> Bool in
				return view is UILabel
			}.first as? UILabel
		}
	}
	
	override var imageView: UIImageView? {
		get {
			return self.subviews.filter { (view) -> Bool in
				return view is UIImageView
			}.first as? UIImageView
		}
	}
	
	// MARK: - GRADIENT PROPERTIES
	@IBInspectable var firstColor: UIColor = UIColor.clear {
	   didSet {
		   updateUI()
	   }
	}
	
	@IBInspectable var middleColor: UIColor = UIColor.clear {
	   didSet {
		   updateUI()
	   }
	}
	
	@IBInspectable var lastColor: UIColor = UIColor.clear {
	   didSet {
		   updateUI()
	   }
	}
	
	@IBInspectable var isHorizontal: Bool = true {
	   didSet {
		   updateUI()
	   }
	}
	
	override class var layerClass: AnyClass {
	   get {
		   return CAGradientLayer.self
	   }
	}
	
	var titleLabels: [UILabel] {
		get {
			return self.subviews.filter { (view) -> Bool in
				return view is UILabel
			} as? [UILabel] ?? []
		}
	}
	
	var imageViews: [UIImageView] {
		get {
			return self.subviews.filter { (view) -> Bool in
				return view is UIImageView
			} as? [UIImageView] ?? []
		}
	}

	func updateUI() {

		let layer = self.layer as? CAGradientLayer
		layer?.colors = [firstColor, middleColor, lastColor].map {$0.cgColor}
		if (isHorizontal) {
			layer?.startPoint = CGPoint(x: 0, y: 0.5)
			layer?.endPoint = CGPoint(x: 1, y: 0.5)
		} else {
			layer?.startPoint = CGPoint(x: 0.5, y: 0)
			layer?.endPoint = CGPoint(x: 0.5, y: 1)
		}
		
		self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
		
		self.titleLabel?.adjustsFontSizeToFitWidth = true
		self.titleLabel?.textColor = self.titleLabelColor
		
		self.imageView?.tintColor = self.imageTintColor

		if circular {
			self.layer.cornerRadius = self.bounds.size.height * 0.5
			self.layoutIfNeeded()
		} else {
			self.layer.cornerRadius = cornerRadius
		}
		
		if #available(iOS 11.0, *) {
			self.layer.maskedCorners = cornerMask
		}
		
		
	}

	override func layoutSubviews() {
		super.layoutSubviews()
		updateUI()
	}

	override func setNeedsLayout() {
		super.setNeedsLayout()

	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesBegan(touches, with: event)
		if animates {
			UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: .curveEaseInOut, animations: {
				self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
			}, completion: nil)
		}

	}
	

	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesEnded(touches, with: event)

		if animates {
			UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: .curveEaseInOut, animations: {
				DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
					self.transform = CGAffineTransform.identity
				}
			}, completion: nil)
		}

	}

	override func setTitle(_ title: String?, for state: UIControl.State) {
		self.subviews.forEach { (view) in
			if let label = view as? UILabel {
				label.text = title
			}
		}
	}
	
}
