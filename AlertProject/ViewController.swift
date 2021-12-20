//
//  ViewController.swift
//  AlertProject
//
//  Created by Ahmet on 20.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signUpClick(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Hatalı Giriş Yaptınız", message: "Kullanıcı Bulunamadı", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
           // BUTTON CLICK
            print("Butona Tıklandı")
        }
        alert.addAction(okButton)
        self.present(alert,animated: true,completion: nil)*/
        
        if usernameText.text==""{
            buttonClicked(titleInput: "Hata!", messageInput: "Kullanıcı Adı Giriniz.")
        } else if passwordText.text==""{
            buttonClicked(titleInput: "Hata!", messageInput: "Şifre Giriniz.")
        } else if passwordText.text != password2Text.text{
            buttonClicked(titleInput: "Hata!", messageInput: "Şifreler Uyuşmuyor, Tekrar Deneyiniz.")
            }
            else{
            buttonClicked(titleInput: "Başarılı", messageInput: "Kayıt Oldunuz")
            }
        }
    
        func buttonClicked(titleInput:String,messageInput:String){
            let alert=UIAlertController(title:titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton=UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated:true, completion:nil)
        }
    }


