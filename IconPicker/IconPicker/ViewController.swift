//
//  ViewController.swift
//  IconPicker
//
//  Created by Jason Koceja on 9/18/20.
//  Copyright © 2020 Jason Koceja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iconImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //iconPickerSegue
        if let destinationVC = segue.destination as? IconPickerViewController {
            destinationVC.delegate = self
        }
    }
}

extension ViewController: IconPickerViewControllerDelegate {
    func iconPickerButtonTapped(image: UIImage?) {
        iconImageView.image = image
    }
}
