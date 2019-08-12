import UIKit

class SecondViewController: UIViewController {
    let centerSecondLabel = UILabel()
    let meterOneFinalLabel = UILabel()
    let meterTwoFinalLabel = UILabel()
    let allMeterFinalLabel = UILabel()
    let payBankLable = UILabel()
    let downButton = UIButton()
    var x = Double()
    var xTwo = Double()
    var yTwo = Double()
    var y = Double()
    var z = Double()
    var d = Double()
    //    secVC.x = waterOne
//    secVC.y = waterTwo
//    secVC.z = allWater
//    secVC.d = allWaterPrice
//    secVC.xTwo = waterOnePrice
//    secVC.yTwo = waterTwoPrice


    override func viewDidLoad() {
        super.viewDidLoad()
        //background
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "b2.png")!)
        //centerSecondLabel
        centerSecondLabel.text = "Расходы воды составил:"
        centerSecondLabel.textColor = UIColor.white
        centerSecondLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        centerSecondLabel.frame = CGRect(x: 76, y: 50, width: 400, height: 30)
        view.addSubview(centerSecondLabel)
        //meterOneFinalLabel
        meterOneFinalLabel.text = "Расход по прибору 1 = \(x)м³, на сумму \(xTwo)р;"

        meterOneFinalLabel.textColor = UIColor.white
        meterOneFinalLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 18)
        meterOneFinalLabel.frame = CGRect(x: 22, y: 200, width: 600, height: 20 )
        view.addSubview(meterOneFinalLabel)
        //meterTwoFinalLabel
        meterTwoFinalLabel.text = "Расход по прибору 2 = \(y)м³,на сумму \(yTwo)р;"
        meterTwoFinalLabel.textColor = UIColor.white
        meterTwoFinalLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 18)
        meterTwoFinalLabel.frame = CGRect(x: 22, y: 250, width: 600, height: 20)
        view.addSubview(meterTwoFinalLabel)
        //allMeterFinalLabel
        allMeterFinalLabel.text = "Общий расход составил \(z)м³;"
        allMeterFinalLabel.textColor = UIColor.white
        allMeterFinalLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 18)
        allMeterFinalLabel.frame = CGRect(x: 22, y: 300, width: 400, height: 20)
        view.addSubview(allMeterFinalLabel)
        //payBankLable
        payBankLable.text = "Итого к оплате: \(d) рублей."
        payBankLable.textColor = UIColor.white
        payBankLable.font = UIFont(name: "Apple SD Gothic Neo", size: 23)
       payBankLable.frame = CGRect(x: 22, y: 340, width: 400, height: 40)
        view.addSubview(payBankLable)
        //downButton
        downButton.setTitle("ок", for: .normal)
        downButton.titleLabel?.textColor = UIColor.white
        downButton.layer.borderColor = UIColor.white.cgColor
        downButton.layer.cornerRadius = 5
        downButton.layer.borderWidth = 1
        downButton.frame = CGRect(x: 179, y: 530, width: 60, height: 30)
        downButton.addTarget(self, action: #selector(down(target:)), for: .touchUpInside)
        view.addSubview(downButton)
        
        
    }
    
    //возврат на первый вьюконтроллер
    @objc func down(target:UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    


}
