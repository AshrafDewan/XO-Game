//
//  ViewController.swift
//  Day2XOGame
//
//  Created by Ashraf Dewan on 3/28/20.
//  Copyright © 2020 Ashraf Dewan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameTitle: UILabel!
    var score: UILabel!
    var resetGame: UIButton!
    var switcher = true
    var buttons = [UIButton]()
    var win = [[Int]()]
    var winner1 = [Int]()
    var winner2 = [Int]()
    var counterO = 0
    var counterX = 0
    
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var button5: UIButton!
    var button6: UIButton!
    var button7: UIButton!
    var button8: UIButton!
    var button9: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = UIView()
        view.backgroundColor = .brown
        win = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
        
        gameTitle = UILabel()
        gameTitle.translatesAutoresizingMaskIntoConstraints = false
        gameTitle.font = UIFont(name: "Chalkduster", size: 24)
        gameTitle.textColor = .cyan
        gameTitle.textAlignment = .center
        gameTitle.text = "SwiftyCamp Tic Tac Toe"
        view.addSubview(gameTitle)
        
        score = UILabel()
        score.translatesAutoresizingMaskIntoConstraints = false
        score.font = UIFont(name: "Marker Felt", size: 20)
        score.textColor = .red
        score.textAlignment = .center
        score.text = "The \("O") player always starts."
        view.addSubview(score)
        
        button1 = UIButton(type: .system)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button1.setTitle("-", for: .normal)
        button1.backgroundColor = .white
        button1.layer.borderWidth = 1
        button1.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button1.tag = 1
        button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button1)
        
        button2 = UIButton(type: .system)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button2.setTitle("-", for: .normal)
        button2.backgroundColor = .white
        button2.layer.borderWidth = 1
        button2.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button2.tag = 2
        button2.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button2)
        
        button3 = UIButton(type: .system)
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button3.setTitle("-", for: .normal)
        button3.backgroundColor = .white
        button3.layer.borderWidth = 1
        button3.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button3.tag = 3
        button3.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button3)
        
        button4 = UIButton(type: .system)
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button4.setTitle("-", for: .normal)
        button4.backgroundColor = .white
        button4.layer.borderWidth = 1
        button4.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button4.tag = 4
        button4.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button4)
        
        button5 = UIButton(type: .system)
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button5.setTitle("-", for: .normal)
        button5.backgroundColor = .white
        button5.layer.borderWidth = 1
        button5.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button5.tag = 5
        button5.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button5)
        
        button6 = UIButton(type: .system)
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button6.setTitle("-", for: .normal)
        button6.backgroundColor = .white
        button6.layer.borderWidth = 1
        button6.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button6.tag = 6
        button6.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button6)
        
        button7 = UIButton(type: .system)
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button7.setTitle("-", for: .normal)
        button7.backgroundColor = .white
        button7.layer.borderWidth = 1
        button7.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button7.tag = 7
        button7.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button7)
        
        button8 = UIButton(type: .system)
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button8.setTitle("-", for: .normal)
        button8.backgroundColor = .white
        button8.layer.borderWidth = 1
        button8.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button8.tag = 8
        button8.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button8)
        
        button9 = UIButton(type: .system)
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.titleLabel!.font = UIFont(name: "Chalkduster", size: 60)
        button9.setTitle("-", for: .normal)
        button9.backgroundColor = .white
        button9.layer.borderWidth = 1
        button9.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        button9.tag = 9
        button9.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button9)
        
        resetGame = UIButton(type: .system)
        resetGame.translatesAutoresizingMaskIntoConstraints = false
        resetGame.setTitle("Reset Game", for: .normal)
        resetGame.addTarget(self, action: #selector(resetTapped), for: .touchUpInside)
        view.addSubview(resetGame)
        
        NSLayoutConstraint.activate([
            gameTitle.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            gameTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            score.topAnchor.constraint(equalTo: gameTitle.bottomAnchor, constant: 20),
            score.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            button1.trailingAnchor.constraint(equalTo: button2.leadingAnchor),
            button1.bottomAnchor.constraint(equalTo: button4.topAnchor),
            button1.widthAnchor.constraint(equalTo: button5.widthAnchor),
            button1.heightAnchor.constraint(equalTo: button5.heightAnchor),
            
            button2.leadingAnchor.constraint(equalTo: button5.leadingAnchor),
            button2.bottomAnchor.constraint(equalTo: button5.topAnchor),
            button2.widthAnchor.constraint(equalTo: button5.widthAnchor),
            button2.heightAnchor.constraint(equalTo: button5.heightAnchor),
            
            button3.leadingAnchor.constraint(equalTo: button2.trailingAnchor),
            button3.bottomAnchor.constraint(equalTo: button6.topAnchor),
            button3.widthAnchor.constraint(equalTo: button5.widthAnchor),
            button3.heightAnchor.constraint(equalTo: button5.heightAnchor),
            
            button4.trailingAnchor.constraint(equalTo: button5.leadingAnchor),
            button4.topAnchor.constraint(equalTo: button5.topAnchor),
            button4.widthAnchor.constraint(equalTo: button5.widthAnchor),
            button4.heightAnchor.constraint(equalTo: button5.heightAnchor),
            
            button5.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button5.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button5.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1 / 3),
            button5.heightAnchor.constraint(equalTo: button5.widthAnchor),
            
            button6.leadingAnchor.constraint(equalTo: button5.trailingAnchor),
            button6.topAnchor.constraint(equalTo: button5.topAnchor),
            button6.widthAnchor.constraint(equalTo: button5.widthAnchor),
            button6.heightAnchor.constraint(equalTo: button5.heightAnchor),
            
            button7.topAnchor.constraint(equalTo: button4.bottomAnchor),
            button7.trailingAnchor.constraint(equalTo: button8.leadingAnchor),
            button7.widthAnchor.constraint(equalTo: button5.widthAnchor),
            button7.heightAnchor.constraint(equalTo: button5.heightAnchor),
            
            button8.leadingAnchor.constraint(equalTo: button5.leadingAnchor),
            button8.topAnchor.constraint(equalTo: button5.bottomAnchor),
            button8.widthAnchor.constraint(equalTo: button5.widthAnchor),
            button8.heightAnchor.constraint(equalTo: button5.heightAnchor),
            
            button9.leadingAnchor.constraint(equalTo: button8.trailingAnchor),
            button9.topAnchor.constraint(equalTo: button6.bottomAnchor),
            button9.widthAnchor.constraint(equalTo: button5.widthAnchor),
            button9.heightAnchor.constraint(equalTo: button5.heightAnchor),
            
            resetGame.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
            resetGame.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        if switcher {
            sender.setTitleColor(.red, for: .normal)
            sender.setTitle("O", for: .normal)
            winner1.append(sender.tag)
        } else {
            sender.setTitleColor(.blue, for: .normal)
            sender.setTitle("X", for: .normal)
            winner2.append(sender.tag)
        }
        
        buttons.append(sender)
        switcher = !switcher
        sender.isEnabled = false
        
        for (index, set) in win.enumerated() {
            if winner1.contains(set[0]) && winner1.contains(set[1]) && winner1.contains(set[2]) {
                counterO += 1
                win.remove(at: index)
            } else if winner2.contains(set[0]) && winner2.contains(set[1]) && winner2.contains(set[2]) {
                counterX += 1
                win.remove(at: index)
            }
        }
        
        if buttons.count == 9 {
            if counterO == counterX {
                let ac = UIAlertController(title: "DRAW", message: nil, preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Restart", style: .default) { [weak self] _ in
                    self?.resetTapped()
                })
                present(ac, animated: true)
            } else if counterO > counterX {
                let ac = UIAlertController(title: "O Player wins", message: nil, preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Restart", style: .default) { [weak self] _ in
                    self?.resetTapped()
                })
                present(ac, animated: true)
            } else {
                let ac = UIAlertController(title: "X player wins", message: nil, preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Restart", style: .default) { [weak self] _ in
                    self?.resetTapped()
                })
                present(ac, animated: true)
            }
        }
    }
    
    @objc func resetTapped() {
        for btn in buttons {
            btn.isEnabled = true
            btn.setTitle("-", for: .normal)
            btn.setTitleColor(.blue, for: .normal)
        }
        
        win = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
        buttons.removeAll()
        winner1.removeAll()
        winner2.removeAll()
        switcher = true
        counterO = 0
        counterX = 0
        score.text = "The \("O") player always starts."
    }
}
