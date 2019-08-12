import UIKit
import Foundation

class ViewController: UIViewController {
    //текстовые поля, кнопки, свитчи
    let meterField = UITextField()
    let meterFieldTwo = UITextField()
    let newMeterField = UITextField()
    let newMeterFieldTwo = UITextField()
    let metLabel = UILabel()
    let metLabelTwo = UILabel()
    let newMetLabel = UILabel()
    let newMetLabelTwo = UILabel()
    let centerLable = UILabel()
    let tarifLable = UILabel()
    let tarifSwitch = UISwitch()
    let calculateButton = UIButton()
    let alertButton = UIButton()
    let priceWater: Double = 40.44
    let priceAllWater: Double = 28.40
    
   
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //фон первого контроллера
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "b1.jpg")!)
        
        //centerLabel
        centerLable.text = "Расчет расхода воды"
        centerLable.textColor = UIColor.white
        centerLable.frame = CGRect(x: 93, y: 50, width: 400, height: 30)
        centerLable.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        view.addSubview(centerLable)
        
        //metLabel
        metLabel.text = "Прибор 1 (предыдущие):"
        metLabel.textColor = UIColor.white
        metLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        metLabel.frame = CGRect(x: 22, y: 150, width: 230, height: 20)
        view.addSubview(metLabel)
        //meterField
        meterField.frame = CGRect(x: 270, y: 143, width: 120, height: 30)
        meterField.backgroundColor = UIColor.white
        meterField.keyboardType = .decimalPad
        meterField.layer.cornerRadius = 4
        meterField.placeholder = "Ввод"
        meterField.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        meterField.textAlignment = .center
        view.addSubview(meterField)
        //metLabelTwo
        metLabelTwo.text = "Прибор 2 (предыдущие):"
        metLabelTwo.textColor = UIColor.white
        metLabelTwo.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        metLabelTwo.frame = CGRect(x: 22, y: 240, width: 230, height: 20)
        view.addSubview(metLabelTwo)
        //meterFieldTwo
        meterFieldTwo.frame = CGRect(x: 270, y: 233, width: 120, height: 30)
        meterFieldTwo.backgroundColor = UIColor.white
        meterFieldTwo.keyboardType = .decimalPad
        meterFieldTwo.layer.cornerRadius = 4
        meterFieldTwo.placeholder = "Ввод"
        meterFieldTwo.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        meterFieldTwo.textAlignment = .center
        view.addSubview(meterFieldTwo)
        //newMetLabel
        newMetLabel.text = "Прибор 1 (текущие):"
        newMetLabel.textColor = UIColor.white
        newMetLabel.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        newMetLabel.frame = CGRect(x: 22, y: 330, width: 230, height: 20)
        view.addSubview(newMetLabel)
        //newMeterField
        newMeterField.frame = CGRect(x: 270, y: 323, width: 120, height: 30)
        newMeterField.backgroundColor = UIColor.white
        newMeterField.keyboardType = .decimalPad
        newMeterField.layer.cornerRadius = 4
        newMeterField.placeholder = "Ввод"
        newMeterField.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        newMeterField.textAlignment = .center
        view.addSubview(newMeterField)
        //newMetLabelTwo
        newMetLabelTwo.text = "Прибор 2 (текущие):"
        newMetLabelTwo.textColor = UIColor.white
        newMetLabelTwo.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        newMetLabelTwo.frame = CGRect(x: 22, y: 420, width: 230, height: 20)
        view.addSubview(newMetLabelTwo)
        //newMeterFieldTwo
        newMeterFieldTwo.frame = CGRect(x: 270, y: 413, width: 120, height: 30)
        newMeterFieldTwo.backgroundColor = UIColor.white
        newMeterFieldTwo.keyboardType = .decimalPad
        newMeterFieldTwo.layer.cornerRadius = 4
        newMeterFieldTwo.placeholder = "Ввод"
        newMeterFieldTwo.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        newMeterFieldTwo.textAlignment = .center
        view.addSubview(newMeterFieldTwo)
        //tarifSwitch
        tarifSwitch.frame = CGRect(x: 22 , y: 520, width: 0, height: 0)
        view.addSubview(tarifSwitch)
        //tariffLabel
        tarifLable.text = "-"
        tarifLable.textColor = UIColor.white
        tarifLable.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        tarifLable.frame = CGRect(x: 90, y: 531, width: 15, height: 10)
        view.addSubview(tarifLable)
        //calculateButton
        calculateButton.setTitle("Расчитать", for: .normal)
        calculateButton.titleLabel?.textColor = UIColor.white
        calculateButton.layer.borderColor = UIColor.white.cgColor
        calculateButton.layer.cornerRadius = 5
        calculateButton.layer.borderWidth = 1
        calculateButton.frame = CGRect(x: 158, y: 650, width: 100, height: 40)
        view.addSubview(calculateButton)
        calculateButton.addTarget(self, action: #selector(calculateFunc(target:)), for: .touchUpInside)
        //alert button
        alertButton.frame = CGRect(x: 115, y: 522, width: 250, height: 25)
        alertButton.setTitle("Показать текущие тарифы", for: .normal)
        alertButton.titleLabel?.textColor = UIColor.white
        alertButton.layer.borderColor = UIColor.white.cgColor
        alertButton.layer.cornerRadius = 5
        alertButton.layer.borderWidth = 1
        view.addSubview(alertButton)
        alertButton.addTarget(self, action: #selector(isOn(target:)), for: .touchUpInside)
    }
    
    //метод вызова алерта с тарифами, если свитч включен
    @objc func isOn(target: UISwitch) {
        if tarifSwitch.isOn {
            let tarifAlert = UIAlertController(title: "Тарифы на текущий момент", message: "1м³ холодной/горячей воды = 40,44р, 1м³ водоотведения = 28,40р", preferredStyle: .alert)
            let alertButtonAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            tarifAlert.addAction(alertButtonAction)
            present(tarifAlert, animated: true, completion: nil)
        }
    }
    
    //метод проверки пустоты textfield и расчет значений, если textfield не пуст
    @objc func calculateFunc(target: UIButton) {
        if  (self.meterField.text!.isEmpty) || (self.meterFieldTwo.text!.isEmpty) || (self.newMeterField.text!.isEmpty) || (self.newMeterFieldTwo.text!.isEmpty) {
            let erorAlert = UIAlertController(title: "Ошибка!", message: "Введите корректное значение", preferredStyle: .alert)
            let erorAlertButon = UIAlertAction(title: "OK", style: .default, handler: nil)
            erorAlert.addAction(erorAlertButon)
            present(erorAlert, animated: true, completion: nil)
        } else {
            let waterOne: Double = Double(newMeterField.text!.replacingOccurrences(of: ",", with: "."))! - Double(meterField.text!.replacingOccurrences(of: ",", with: "."))!
            let waterOnePrice: Double = waterOne * priceWater
            let waterTwo: Double = Double(newMeterFieldTwo.text!.replacingOccurrences(of: ",", with: "."))! - Double(meterFieldTwo.text!.replacingOccurrences(of: ",", with: "."))!
            let waterTwoPrice: Double = waterTwo * priceWater
            let allWater: Double = waterOne + waterTwo
            let allWaterPrice: Double = (allWater * priceWater) + (allWater * priceAllWater)
        //добавление второго viewController и создания в нем переменных с привязкой к значениям первого
        //viewController
            let secVC = SecondViewController()
            secVC.x = Double(round(100 * waterOne)) / 100
            secVC.y =  Double(round(100 * waterTwo)) / 100
            secVC.z = Double(round(100 * allWater)) / 100
            secVC.d = Double(round(100 * allWaterPrice)) / 100
            secVC.xTwo =  Double(round(100 * waterOnePrice)) / 100
            secVC.yTwo = Double(round(100 * waterTwoPrice)) / 100
            present(secVC, animated: true, completion: nil)
        }
    }
    //скрытие клавиатуры по нажатию на вью
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
       
    }
    
}

