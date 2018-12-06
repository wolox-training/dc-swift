//
//  NewBookController.swift
//  DcProject
//
//  Created by Daniel Andres Charry on 30/11/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class NewBookController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    private let _viewModel: NewBookViewModel
    private let _view: NewBookView = NewBookView.loadFromNib()!
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(*, unavailable, message: "use init(viewModel:) instead")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("init(nibName:bundle:) has not been implemented")
    }
    
    init(viewModel: NewBookViewModel) {
        _viewModel = viewModel
        super.init(nibName: .none, bundle: .none)
    }
    
    override public func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confingNavBar()
        configButton()
        _view.newBookName.delegate = self
        _view.newBookAuthor.delegate = self
        _view.newBookYear.delegate = self
        _view.newBookTopic.delegate = self
        _view.newBookDescription.delegate = self
        
    }
    
    func confingNavBar() {
        navigationItem.title = "NAVBAR-TITLE-ADDNEW".localized()
    }
    
    func configButton() {
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap))
        tapGesture.numberOfTapsRequired = 1
        _view.btnSubmit.addGestureRecognizer(tapGesture)
        
        let tapImage = UITapGestureRecognizer(target: self, action: #selector(setImage))
        tapImage.numberOfTapsRequired = 1
        _view.btnAddImage.addGestureRecognizer(tapImage)
    }
    
    @objc func setImage(sender: UITapGestureRecognizer) {
        
        let imag = UIImagePickerController()
        imag.delegate = self
        imag.sourceType = .photoLibrary
        imag.allowsEditing = true
        
        present(imag, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let image = info["UIImagePickerControllerOriginalImage"] as? UIImage else {
            NSLog("No image found")
            return
        }
        _view.btnAddImage.setImage(image, for: .normal)
        picker.dismiss(animated: true)
    }
    
    @objc func tap(sender: UITapGestureRecognizer) {
        
        let book = Book.init(
            title: _view.newBookName.text!,
            author: _view.newBookAuthor.text!,
            image: NewBookController.MockImage,
            id: NewBookController.MockId,
            year: _view.newBookYear.text!,
            genre: NewBookController.MockGenre)
        
        _viewModel.newBook = book
        
        _viewModel.postBook().responseJSON {[unowned self] _ in
            self.presentAlert(ErrorAlertViewModel(title: "CREATION-BOOK-SUCCESSFUL".localized(),
                                                  message: book.title,
                                                  dismissButtonTitle: "BUTTON-ALERT-OK".localized()))
        }
    }
    
}

extension NewBookController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        _view.endEditing(true)
        return true
    }
}

// MARK: - Constants
private extension NewBookController {
    static let MockImage: String = "https://read.macmillan.com/wp-content/uploads/2016/04/book-cover-placeholder.png"
    static let MockGenre: String = "Terror"
    static let MockId: Int = 1
}
