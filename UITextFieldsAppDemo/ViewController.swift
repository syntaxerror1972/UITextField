//
//  ViewController.swift
//  UITextFieldsAppDemo
//
//  Created by Shrawan Shinde on 09/12/16.
//  Copyright © 2016 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    //Declarations
    var textField : UITextField!
    var label : UILabel!
    let str : String = "You have entered:"
    var roundedButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Color #1 - Initial color
       // view.backgroundColor = UIColor.blue
        
        
      /*  //simple UITextField
        var simpleTxtField: UITextField = UITextField()
        simpleTxtField.frame = CGRect(x: 50, y: 70, width: 200, height: 30)
        simpleTxtField.backgroundColor = UIColor.gray
        self.view.addSubview(simpleTxtField)*/
        
        let placeholder = NSAttributedString(string: "Enter here", attributes: [NSForegroundColorAttributeName: UIColor.lightGray])
        
        textField = UITextField(frame: CGRect(x: 50, y: 150, width: 200, height: 40))
        
        textField.attributedPlaceholder = placeholder
        textField.textColor = UIColor.black
        textField.backgroundColor = UIColor.gray
        
        textField.delegate = self
        textField.font=setFont()
        textField.clearsOnBeginEditing = true
        self.view.addSubview(textField)
        
        label = UILabel(frame: CGRect(x: 50, y: 200, width: 200, height: 20))
        label.text = str
        self.view.addSubview(label)
        
        //simple UIButton  with rounded corner in swift 3.0
        roundedButton.setTitle(buttonText, for: .normal)
        roundedButton.backgroundColor = .clear
        roundedButton.layer.cornerRadius = 5
        roundedButton.layer.borderWidth = 1
        roundedButton.layer.borderColor = UIColor.black.cgColor
        roundedButton.setTitleColor(UIColor.black, for: .normal)
        roundedButton.frame = CGRect(x: 150, y: 400, width: 150, height: 50)
        roundedButton.addTarget(self, action: #selector(self.roundedButtonTapped), for: .touchUpInside)
        
         self.view.addSubview(roundedButton)
        
        
    }
    
    func roundedButtonTapped(sender : UIButton) {
        //Write button action here
   
            var alertView = UIAlertView();
            alertView.addButton(withTitle: "Ok");
            alertView.title = "Alert";
            alertView.message = textField.text;
            label.text = "Entered text : " + textField.text!;
            alertView.show();
        
        
        
      
    }
    
    //this code allow only numbers in Textfields-working
    
    /*func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    } */
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

