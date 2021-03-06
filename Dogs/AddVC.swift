//
//  AddVC.swift
//  Dogs
//
//  Created by Ashwin Mahesh on 7/11/18.
//  Copyright © 2018 AshwinMahesh. All rights reserved.
//

import UIKit

class AddVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var uploadButton: UIButton!
    @IBAction func uploadPushed(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion:nil)
    }
    let imagePicker = UIImagePickerController()
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var colorField: UITextField!
    @IBOutlet weak var treatField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            uploadButton.setBackgroundImage(pickedImage, for: .normal)
        }
        uploadButton.setTitle("", for: .normal)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func submitPushed(_ sender: UIButton) {
        performSegue(withIdentifier: "UnwindSegue", sender: sender)
    }
    
}

