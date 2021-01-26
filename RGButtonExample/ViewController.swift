//
//  ViewController.swift
//  RGButtonExample
//
//  Created by Palvision Macbook Air on 1/25/21.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func didTapButton1(_ sender: Any) {
		let alert = UIAlertController(title: "Button clicked", message: "Button 1 clicked", preferredStyle: .alert)
		let close = UIAlertAction(title: "Close", style: .cancel, handler: nil)
		alert.addAction(close)
		self.present(alert, animated: true, completion: nil)
	}
	
	@IBAction func didTapEdit(_ sender: Any) {
		let alert = UIAlertController(title: "Button clicked", message: "Edit button clicked", preferredStyle: .alert)
		let close = UIAlertAction(title: "Close", style: .cancel, handler: nil)
		alert.addAction(close)
		self.present(alert, animated: true, completion: nil)
	}
	
	@IBAction func didTapRemove(_ sender: Any) {
		let alert = UIAlertController(title: "Button clicked", message: "Remove button clicked", preferredStyle: .alert)
		let close = UIAlertAction(title: "Close", style: .cancel, handler: nil)
		alert.addAction(close)
		self.present(alert, animated: true, completion: nil)
	}
	
	@IBAction func didTapLogin1(_ sender: Any) {
		let alert = UIAlertController(title: "Button clicked", message: "Login button 1 clicked", preferredStyle: .alert)
		let close = UIAlertAction(title: "Close", style: .cancel, handler: nil)
		alert.addAction(close)
		self.present(alert, animated: true, completion: nil)
	}
	
	@IBAction func didTapLogin2(_ sender: Any) {
		let alert = UIAlertController(title: "Button clicked", message: "Login button 2 clicked", preferredStyle: .alert)
		let close = UIAlertAction(title: "Close", style: .cancel, handler: nil)
		alert.addAction(close)
		self.present(alert, animated: true, completion: nil)
	}
	
}

