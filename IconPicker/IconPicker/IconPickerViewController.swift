//
//  IconPickerViewController.swift
//  IconPicker
//
//  Created by Jason Koceja on 9/18/20.
//  Copyright © 2020 Jason Koceja. All rights reserved.
//

import UIKit

protocol IconPickerViewControllerDelegate: AnyObject {
    func iconPickerButtonTapped(image: UIImage?)
}

class IconPickerViewController: UIViewController {
    
    weak var delegate: IconPickerViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func lassoButtonTapped(_ sender: UIButton) {
        delegate?.iconPickerButtonTapped(image: sender.currentImage)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func trashButtonTapped(_ sender: UIButton) {
        delegate?.iconPickerButtonTapped(image: sender.currentImage)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func calendarButtonTapped(_ sender: UIButton) {
        delegate?.iconPickerButtonTapped(image: sender.currentImage)
        dismiss(animated: true, completion: nil)
    }
}
