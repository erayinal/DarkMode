//
//  ViewController.swift
//  DarkMode
//
//  Created by Eray İnal on 5.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    //1 Normalde Dark Mode'a ayarlardan kendimiz alabiliriz, bunun kodunu yazmasak da alınabilir ama biz; Kullanıcı Dark Mode kullanırsa şu renkte olsun light mode kullanırsa şu renkte olsun gibi özelleştirmeler yapabiliriz.

    @IBOutlet weak var changeButton: UIButton!  //2 Bunu action olarak tanımlamama gerek yok outlet olarak tanımladım
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //5 Olay burada bitmiyor. Biz şunu diyebiliriz: Ben bir viewController'ımda sadece light mode olsun istiyorum çünkü orada dark mode kullanmamın mümkünatı yok diğer yerlerde kullanıcı ne mode kullanıyorsa ona göre ayarlansın. Bunun için:
        overrideUserInterfaceStyle = .light //.5 Bu satırda; kullanıcının hangi modu seçtiğine bakmaksızın bu viewController'ı direkt olarak light moda çevirecektir
        
        
        //6 Peki ben bunu bütün viewController'da yapmak zorunda mıyım ben direkt bütün app'i light mode olsun istiyorum: Bunun için Info dosyasına gidiyoruz ve oradan yapıyoruz: + butonuna basıp oradan 'Appearance'ı seçip daha sonrasında Light veya Dark yazarak olması istediğimizi seçebiliriz.
        
    }
    
    
    
    
    //3 Yapacaklarımızı viewDidLoad içerisinde yaparsak uygulama açıkken kullanıcı Mode değiştirirse bunu farkedemeyiz, bu yüzden ayarlarda meydana gelen herhangi bir değişiklikte uygulamaya bildirim gönderen bir method var onun içerisinde yazmalıyız:
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        //4 Her şeyden önce kullanıcı hangi modda kullanıyor onu öğrenmem lazım:
        let userStyle = traitCollection.userInterfaceStyle  //.4 bu şekilde kullanıcının anlık interface stilini öğrenebiliriz
        
        if(userStyle == .dark){ //..4 Eğer Dark Mode kullanıyorsa buton rengi beyaz olsun, light mode kullanıyorsa mor olsun şeklinde ayarladık
            changeButton.tintColor = UIColor.white
        }
        else{
            changeButton.tintColor = UIColor.purple
        }
        
        //5 Olay burada bitmiyor. Biz şunu diyebiliriz: Ben bir viewController'ımda sadece light mode olsun istiyorum çünkü orada dark mode kullanmamın mümkünatı yok diğer yerlerde kullanıcı ne mode kullanıyorsa ona göre ayarlansın. Bunun için
    }


}

