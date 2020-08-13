//
//  AnimationsViewController.swift
//  inmotion_Juliana
//
//  Created by Juliana Pereira Machado on 03/08/20.
//  Copyright © 2020 Juliana Pereira Machado. All rights reserved.
//

import UIKit
import ViewAnimator
import Motion

var lbl_TitleAnimation = UILabel()
var lbl_TextAnimation = UILabel()
var lbl_SubtitleAnimation = UILabel()
var lbl_SecondTextAnimation = UILabel()
var lbl_SourceAnimation = UILabel()
var lbl_TitleRefAnimation = UILabel()
var lbl_Slider = UILabel()
let btn1 = UIButton()
let btn2 = UIButton()
let btn3 = UIButton()
let btn4 = UIButton()

class AnimationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let principlesTable = UITableView()
    
    let principlesData = ["Easing", "Offset & Delay", "Parenting", "Transformation", "Value Change", "Masking", "Overlay", "Cloning", "Obscuration", "Parallax", "Dimensionality", "Dolly & Zoom"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addSubview(principlesTable)
        principlesTable.frame = view.bounds
        principlesTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        principlesTable.delegate = self
        principlesTable.dataSource = self
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        clearSections()
        setElementsAnimation()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return principlesData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.font = UIFont.systemFont(ofSize: 25)
        cell.textLabel?.text = principlesData[indexPath.row]
        
        cell.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        cell.textLabel?.textColor = .some(#colorLiteral(red: 0.9025990963, green: 0.4315035641, blue: 0.0574413985, alpha: 1))
        if indexPath.row % 2 == 0{
            cell.textLabel?.textColor = .some(#colorLiteral(red: 0.8839969039, green: 0.2171418965, blue: 0.3134946525, alpha: 1))
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //altura da cell
        return 68
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
            
        //MARK: CALL PRINCIPLES
        case 0:
            show(EasingVC(), sender: .none)
            break
            
        case 1:
            show(OffsetDelayVC(), sender: .none)
            break
            
        case 2:
            show(ParentingVC(), sender: .none)
            break
            
        case 3:
            show(TransformationVC(), sender: .none)
            break
            
        case 4:
            show(ValueChangeVC(), sender: .none)
            break
            
        case 5:
            show(MaskingVC(), sender: .none)
            break
            
        case 6:
            show(OverlayVC(), sender: .none)
            break
            
        case 7:
            show(CloningVC(), sender: .none)
            break
            
        case 8:
            show(ObscurationVC(), sender: .none)
            break
            
        case 9:
            show(ParallaxVC(), sender: .none)
            break
            
        case 10:
            show(DimensionalityVC(), sender: .none)
            break
            
        case 11:
            show(DollyZoomVC(), sender: .none)
            break
            
        default:
            show(EasingVC(), sender: .none)
        }
    }
}


//MARK: EASING
class EasingVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Easing"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "Corresponde a aceleração e desaceleração de um elemento. A aplicação desse princípio serve para que a animação não pareça mecânica. \n\nO ease in ou curva de aceleração acontece quando a velocidade aumenta aos poucos. \n\nJá o ease out ou curva de desaceleração é a redução de velocidade até o repouso. \n\nEase-in-out ou curva padrão é o ganho de velocidade inicial e perda no final."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 40, width: view.frame.width-40, height: 500)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: 30, y: 480, width: 160, height: 160))
        view.addSubview(box1)
        box1.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        
        let box2 = UIView(frame: CGRect(x: 220, y: 480, width: 160, height: 160))
        view.addSubview(box2)
        box2.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: box1.center.x, y: box1.center.y+90),.delay(1.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: box2.center.x, y: box2.center.y+90), .delay(1.5))
        
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: box1.center.x, y: 560),.delay(3), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: box2.center.x, y: 560), .delay(3))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 740, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 760, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
    }
}


//MARK: OFFSET & DELAY
class OffsetDelayVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Offset & Delay"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "Refere-se a forma como a interface comunica a hierarquia quando elementos entram ou saem de tela. \n\nPor exemplo, ao mover dois elementos juntos, enquanto um terceiro é deslocado somente depois, entende-se que há algum tipo de “separação."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 40, width: view.frame.width-40, height: 400)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: -250, y: 365, width: 200, height: 150))
        view.addSubview(box1)
        box1.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        
        let box2 = UIView(frame: CGRect(x: -250, y: 530, width: 200, height: 50))
        view.addSubview(box2)
        box2.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        let box3 = UIView(frame: CGRect(x: -250, y: 595, width: 200, height: 50))
        view.addSubview(box3)
        box3.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: 203, y: 440),.delay(1), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 203, y: 555), .delay(1), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box3.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 203, y: 620), .delay(1.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: 600, y: 440),.delay(4), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 600, y: 555), .delay(4), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box3.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 600, y: 620), .delay(4.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 680, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 700, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
    }
}

//MARK: PARENTING
class ParentingVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Parenting"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "Pode ser confundido com Offset & Delay, mas nesse caso, os objetos possuem relações entre si, ou seja, a alteração de um influencia instantaneamente no outro."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 40, width: view.frame.width-40, height: 300)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: 30, y: 265, width: 200, height: 50))
        view.addSubview(box1)
        box1.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        
        let box2 = UIView(frame: CGRect(x: 30, y: 335, width: 200, height: 150))
        view.addSubview(box2)
        box2.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: 130+245, y: 290+15), .scale(x: 0.12, y: 0.5, z: 1), .delay(1), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 130+160, y: 410), .delay(1), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: 130, y: 290), .scale(x: 1, y: 1, z: 1), .delay(3), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 130, y: 410), .delay(3), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 530, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 550, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
    }
}


//MARK: TRANSFORMATION
class TransformationVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Transformation"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "É uma característica que ajuda a construir continuidade entre os elementos e no fluxo narrativo quando a finalidade de um objeto muda. \n\nPor exemplo um botão de enviar, que vira uma barra de progresso e no final confirma a ação."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 300)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: view.frame.center.x/2, y: 360, width: 200, height: 200))
        view.addSubview(box1)
        box1.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        
        
        box1.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .corner(radius: 100), .delay(1), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .corner(radius: -100), .delay(3.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 600, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 620, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
    }
}


//MARK: VALUE CHANGE
class ValueChangeVC: UIViewController{
    
    var slider = UISlider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @objc func sliderValueDidChange(_ sender: UISlider!){
        let value = sender.value
        lbl_Slider.text = ("\(Int(value))")
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Value Change"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "É uma forma de criar um relacionamento narrativo e dinâmico para comunicar mudança de valor.\n\nQuando valores são carregados sem “alteração de valor”, o usuário pode entender que eles são estáticos. Em uma representação dinâmica onde há movimento do “sujeito do valor”, o usuário compreende que ele tem poder para agir."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 115, width: view.frame.width-40, height: 300)
        view.addSubview(lbl_TextAnimation)
        
        
        slider.frame = CGRect(x: 50, y: 490, width: view.frame.width-100, height: 100)
        slider.addTarget(self, action: #selector(self.sliderValueDidChange(_:)), for: .valueChanged)
        slider.isContinuous = false
        slider.minimumValue = 0
        slider.maximumValue = 12
        slider.tintColor = #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)
        view.addSubview(slider)
        
        UIView.animate(withDuration: 0.8){
            self.slider.setValue(0, animated: true)
        }
        
        lbl_Slider.frame = CGRect(x: 20, y: 420, width: view.frame.width-40, height: 100)
        lbl_Slider.text = "0"
        lbl_Slider.textAlignment = .center
        lbl_Slider.font = UIFont.boldSystemFont(ofSize: 80)
        view.addSubview(lbl_Slider)
        
        Timer.scheduledTimer(withTimeInterval: 10.0, repeats: false) { timer in
            self.slider.isContinuous = true
        }
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 600, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 620, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
    }
}


//MARK: MASKING
class MaskingVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Masking"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "Ajuda a construir continuidade em um objeto ou grupo de objetos quando a utilidade dele é determinada através do ato de revelar ou ocultar uma parte do mesmo. \n\nPode ser confundido com o princípio Transformation, mas no caso do Masking, ele não muda o conteúdo, somente o formato."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 300)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: 57, y: 370, width: 300, height: 200))
        view.addSubview(box1)
        box1.backgroundColor = .some(.black)
        
        let box2 = UIView(frame: CGRect(x: 57, y: 370, width: 300, height: 200))
        view.addSubview(box2)
        box2.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        
        box1.animate(.background(color: .black), .fade(0.5))
        
        box2.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .size(width: 100, height: 100), .timingFunction(CAMediaTimingFunction.easeInOut), .corner(radius: 50), .duration(1), .delay(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .size(width: 300, height: 200), .timingFunction(CAMediaTimingFunction.easeInOut), .corner(radius: 0), .duration(1), .delay(3))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 600, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 620, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
    }
}


//MARK: OVERLAY
class OverlayVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Overlay"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "Permite que a interface comunique que há elementos na frente ou atrás em um plano que não é 3D, ou seja, a conhecida sobreposição. É uma forma de criar uma narrativa da relação espacial e do objeto na área plana."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 120, width: view.frame.width-40, height: 200)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: 40, y: 320, width: 200, height: 200))
        view.addSubview(box1)
        box1.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        let box2 = UIView(frame: CGRect(x: 40, y: 320, width: 200, height: 200))
        view.addSubview(box2)
        box2.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: 270, y: 420), .delay(1.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: 140, y: 420), .delay(3.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 550, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 570, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
    }
}


//MARK: CLONING
class CloningVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Cloning"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "Ocorre quando funções se originam de um elemento, criando continuidade, relacionamento e narrativa. A interface guia o olhar do usuário e comunica que a ação ‘x' sob ‘y' resulta a surgimento de novos objetos filhos."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 120, width: view.frame.width-40, height: 200)
        view.addSubview(lbl_TextAnimation)
        
        btn1.frame = CGRect(x: 155, y: 420, width: 100, height: 100)
        btn1.layer.cornerRadius = 50
        btn1.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        btn1.addTarget(self, action: #selector(self.btnClicked(_:)), for: .touchUpInside)
        
        btn2.frame = CGRect(x: 170, y: 420, width: 70, height: 70)
        btn2.layer.cornerRadius = 35
        view.addSubview(btn2)
        btn2.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        btn3.frame = CGRect(x: 170, y: 420, width: 70, height: 70)
        btn3.layer.cornerRadius = 35
        view.addSubview(btn3)
        btn3.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        btn4.frame = CGRect(x: 170, y: 420, width: 70, height: 70)
        btn4.layer.cornerRadius = 35
        view.addSubview(btn4)
        btn4.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        view.addSubview(btn1)
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 580, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 600, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
    }
    
    @objc func btnClicked(_ sender: UIButton){
        
        if btn1.backgroundColor == #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1){
            
            UIView.animate(withDuration: 0.3, animations:{
                
                btn2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 205, y: 355), .delay(0.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
                
                btn3.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 95, y: 435), .delay(0.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
                
                btn4.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 315, y: 435), .delay(0.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
                
                btn1.backgroundColor = #colorLiteral(red: 0.8444814086, green: 0.1755283177, blue: 0.3116061389, alpha: 1)
            })
        }
            
        else
        {
            UIView.animate(withDuration: 0.3, animations:{
                
                btn2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 205, y: 480), .delay(0.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
                
                btn3.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 205, y: 480), .delay(0.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
                
                btn4.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 205, y: 480), .delay(0.5), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
                
                btn1.backgroundColor = #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)
            })
        }
    }
}


//MARK: OBSCURATION
class ObscurationVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Obscuration"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "Possibilita que o usuário se oriente em relação a objetos/cenas que não estão na hierarquia visual primária, ou seja, ele consegue focar um ponto sem sair da tela. \n\nTalvez seja confundido com Overlay, mas nesse caso não há troca de telas, ele informa que um contexto não primário está operando, como se houvesse outro mundo “por trás” de sua hierarquia."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 140, width: view.frame.width-40, height: 200)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIImageView(frame: CGRect(x: 100, y: 370, width: 200, height: 200))
        box1.image = UIImage(named: "look")
        view.addSubview(box1)
        
        let box2 = UIView(frame: CGRect(x: 100, y: 370, width: 200, height: 200))
        view.addSubview(box2)
        box2.backgroundColor = .some(.white)
        
        box2.animate(.background(color: .white), .fade(0.3))
        
        var cont = 0
        
        if box2.frame.width == 200{
            UIView.animate(withDuration: 0.3, animations:{
                
                box1.addBlurEffect()
                box2.animate(.background(color: .black),.delay(0.7), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1), .scale(1.2))
                
                cont += 1
            })}
        
        box2.animate(.background(color: .clear), .position(x: 200, y: 470), .delay(3), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1), . scale(1))
        
        if cont == 1 {
            
            Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { timer in
                box1.removeBlurEffect()
            }
        }
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 620, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 640, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
        
    }
}


//MARK: PARALLAX
class ParallaxVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Parallax"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "Auxilia na criação de hierarquia quando o usuário utiliza o scroll. Ele ocorre quando diferentes objetos se movimentam em tempos diferentes de acordo com sua prioridade. \n\nElementos em primeiro plano ou que se movem “mais rapidamente” são mais próximos para o usuário, enquanto objetos em segundo plano ou que se movem “mais lentamente” são percebidos com mais distância."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 140, width: view.frame.width-40, height: 300)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: 80, y: 485, width: 250, height: 150))
        box1.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        view.addSubview(box1)
        
        let box2 = UIView(frame: CGRect(x: 105, y: 470, width: 200, height: 120))
        view.addSubview(box2)
        box2.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)),.position(x: 205, y: 610), .delay(1), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1.5))
        
        box2.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: 205, y: 645), .delay(1), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)),.position(x: 205, y: 560), .delay(3), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1.5))
        
        box2.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)), .position(x: 205, y: 530), .delay(3), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 720, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 740, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
        
    }
}


//MARK: DIMENSIONALITY
class DimensionalityVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Dimensionality"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "É um modo de superar a falta de profundidade da interface plana quando elementos surgem ou saem de tela. É dividida em 3 tipos:\n\nOrigami - quando o objeto é 'dobrável' ou 'articulado';\n\nFlutuante - quando a origem e a partida é espacial, como se ele flutuasse;\n\nDo objeto - quando o elemento parece ter profundidade e forma real. Nesse caso, a dimensionalidade é revelada durante as transições."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 140, width: view.frame.width-40, height: 370)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: 80, y: 530, width: 250, height: 120))
        box1.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box1)
        
        let box2 = UIView(frame: CGRect(x: 80, y: 650, width: 250, height: 50))
        view.addSubview(box2)
        box2.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)),.position(x: 205, y: 610), .delay(1),.size(width: 250, height: 170), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 205, y: 695), .rotate(x: 90, y: 0, z: 0), .delay(1), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box1.animate(.background(color: #colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1)),.position(x: 205, y: 590), .delay(3),.size(width: 250, height: 120), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box2.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)), .position(x: 205, y: 675), .rotate(x: 180, y: 0, z: 0), .delay(3), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 720, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 740, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
        
    }
}


//MARK: DOLLY & ZOOM
class DollyZoomVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        
        setElements()
        
        lbl_TitleAnimation.text = "Dolly & Zoom"
        lbl_TitleAnimation.frame = CGRect(x: 20, y: 90, width: view.frame.width-40, height: 50)
        view.addSubview(lbl_TitleAnimation)
        
        lbl_TextAnimation.text = "São conceitos de filmagem que se referem ao movimentos de objetos relevantes para a câmera e ao tamanho da imagem no frame quando há uma mudança suave do plano geral para o plano fechado. \n\nÉ utilizado para preservar a continuidade e a narrativa espacial ao navegar pelos objetos/espaços da interface."
        lbl_TextAnimation.frame = CGRect(x: 20, y: 140, width: view.frame.width-40, height: 250)
        view.addSubview(lbl_TextAnimation)
        
        let box1 = UIView(frame: CGRect(x: 170, y: 420, width: 70, height: 70))
        box1.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box1)
        
        let box2 = UIView(frame: CGRect(x: 80, y: 420, width: 70, height: 70))
        box2.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box2)
        
        let box3 = UIView(frame: CGRect(x: 260, y: 420, width: 70, height: 70))
        box3.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box3)
        
        let box4 = UIView(frame: CGRect(x: 80, y: 510, width: 70, height: 70))
        box4.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box4)
        
        let box5 = UIView(frame: CGRect(x: 170, y: 510, width: 70, height: 70))
        box5.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        
        let box6 = UIView(frame: CGRect(x: 260, y: 510, width: 70, height: 70))
        box6.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box6)
        
        let box7 = UIView(frame: CGRect(x: 80, y: 600, width: 70, height: 70))
        box7.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box7)
        
        let box8 = UIView(frame: CGRect(x: 170, y: 600, width: 70, height: 70))
        box8.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box8)
        
        let box9 = UIView(frame: CGRect(x: 260, y: 600, width: 70, height: 70))
        box9.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        view.addSubview(box9)
        
        view.addSubview(box5)
        
        box5.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)),.translate(x: 0, y: 0, z: 50), .delay(1),.size(width: 320, height: 300), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        box5.animate(.background(color: #colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1)),.translate(x: 0, y: 0, z: 0), .delay(3),.size(width: 70, height: 70), .timingFunction(CAMediaTimingFunction.easeInOut), .duration(1))
        
        lbl_TitleRefAnimation.frame = CGRect(x: 20, y: 720, width: view.frame.width-40, height: 20)
        lbl_TitleRefAnimation.text = "Referências"
        view.addSubview(lbl_TitleRefAnimation)
        
        lbl_SourceAnimation.frame = CGRect(x: 20, y: 740, width: view.frame.width-40, height: 120)
        lbl_SourceAnimation.text = "The ultimate guide to proper use of animation in UX - UX Colletcive por Taras Skytskyi\nCreating Usability with Motion: The UX in Motion Manifesto - UX in Motion por Issara Willenskomer\nO motion na interface vs o motion tradicional - UX Motion Design por Felippe Silveira e Pedro Aquino"
        view.addSubview(lbl_SourceAnimation)
        
    }
}


func setElementsAnimation(){
    lbl_TitleAnimation.textAlignment = .center
    lbl_TitleAnimation.font = UIFont.boldSystemFont(ofSize: 25)
    lbl_TextAnimation.lineBreakMode = NSLineBreakMode.byWordWrapping
    lbl_TextAnimation.numberOfLines = 0
    lbl_TextAnimation.textAlignment = .left
    lbl_TextAnimation.font = UIFont.systemFont(ofSize: 20)
    lbl_SubtitleAnimation.textAlignment = .center
    lbl_SubtitleAnimation.font = UIFont.boldSystemFont(ofSize: 20)
    lbl_SecondTextAnimation.lineBreakMode = NSLineBreakMode.byWordWrapping
    lbl_SecondTextAnimation.numberOfLines = 0
    lbl_SecondTextAnimation.textAlignment = .left
    lbl_SecondTextAnimation.font = UIFont.systemFont(ofSize: 20)
    lbl_TitleRefAnimation.textAlignment = .left
    lbl_TitleRefAnimation.font = UIFont.boldSystemFont(ofSize: 15)
    lbl_SourceAnimation.lineBreakMode = NSLineBreakMode.byWordWrapping
    lbl_SourceAnimation.numberOfLines = 0
    lbl_SourceAnimation.textAlignment = .left
    lbl_SourceAnimation.font = UIFont.italicSystemFont(ofSize: 15)
}


//MARK: BLUR EFFECTS

extension UIImageView
{
    func addBlurEffect()
    {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
}

extension UIView {
    
    func removeBlurEffect() {
        let blurredEffectViews = self.subviews.filter{$0 is UIVisualEffectView}
        blurredEffectViews.forEach{ blurView in
            blurView.removeFromSuperview()
        }
    }
}
