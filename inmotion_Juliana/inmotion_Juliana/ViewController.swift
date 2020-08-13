//
//  ViewController.swift
//  inmotion_Juliana
//
//  Created by Juliana Pereira Machado on 02/08/20.
//  Copyright © 2020 Juliana Pereira Machado. All rights reserved.
//

import UIKit
import Motion
import ViewAnimator
import Hero

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let myTable = UITableView()
    
    let data = ["O que é Motion Design?", "Categorias do UX Motion Design", "Boas práticas e acessibilidade", "HIG", "Dicas de implementação", "Os 12 princípios do UX Motion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myTable)
        myTable.frame = view.bounds
        myTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myTable.delegate = self
        myTable.dataSource = self
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //pega as informações do vetor e coloca em cada linha, alternando as cores
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.font = UIFont.systemFont(ofSize: 25)
        cell.textLabel?.textColor = .some(#colorLiteral(red: 1, green: 0.9610419869, blue: 0.939756453, alpha: 1))
        cell.textLabel?.text = data[indexPath.row]
        cell.backgroundColor = .some(#colorLiteral(red: 0.98029989, green: 0.6065732837, blue: 0.05692417175, alpha: 1))
        if indexPath.row % 2 == 0{
            cell.backgroundColor = .some(#colorLiteral(red: 0.958855927, green: 0.313696444, blue: 0.393324554, alpha: 1))
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //altura da cell
        return 138
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
            show(IntroductionVC(), sender: .none)
            break
            
        case 1:
            show(CategoriesMotionDesignVC(), sender: .none)
            break
            
        case 2:
            show(BestPracticesVC(), sender: .none)
            break
            
        case 3:
            show(HIGVC(), sender: .none)
            break
            
        case 4:
            show(TipsVC(), sender: .none)
            break
            
        case 5:
            show(AnimationsViewController(), sender: .none)
            break
            
        default:
            show(ContentViewController(), sender: .none)
        }
    }
}
