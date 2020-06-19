//
//  ViewController.swift
//  ProgrammanticUiKit
//
//  Created by Thanyani on 2020/06/17.
//  Copyright © 2020 Thanyani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel: UILabel!
    var image: UIImageView!
    var followButton: UIButton!
//    var transButton: UIButton!
    var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        nameLabel = UILabel()
        nameLabel.text = "Aang"
        nameLabel.textColor = .black
        nameLabel.font = UIFont.systemFont(ofSize: 30, weight: .light)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        image = UIImageView()
        image.image = UIImage(named: "aang")
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        
        followButton = UIButton()
        followButton.setTitle("Follow", for: .normal)
        followButton.setTitleColor(.blue, for: .normal)
        followButton.layer.borderColor = UIColor.blue.cgColor
        followButton.layer.borderWidth = 0.5
        followButton.addTarget(self, action: #selector(followButtonTapped), for: .touchUpInside)
        followButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(followButton)
        
//
//        transButton = UIButton()
//        transButton.setTitle("Tap Me", for: .normal)
//        transButton.setTitleColor(.blue, for: .normal)
//        transButton.layer.borderColor = UIColor.blue.cgColor
//        transButton.layer.borderWidth = 0.5
//        transButton.addTarget(self, action: #selector(followButtonTapped), for: .touchUpInside)
//        transButton.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(transButton)
        
        textView = UITextView()
        textView.text = "Avatar Aang Aang is the last surviving Airbender, a monk of the Air Nomads Southern Air Temple.He is an incarnation of the Avatar, the spirit of light and peace manifested in human form. As the Avatar, Aang controls all four elements (water, earth, fire, and air) and is tasked with keeping the Four Nations at peace. At 12 years old, Aang is the series reluctant hero, spending a century in suspended animation in an iceberg before joining new friends Katara and Sokka on a quest to master the elements and save their world from the imperialist Fire Nation.Aang's character has appeared in other media, such as trading cards,[1][2] video games,[3][4] T-shirts,[5] and web comics.[6] Aang has also been portrayed by Noah Ringer in the feature film The Last Airbender,[7] and voiced by D.B. Sweeney in the sequel animated series The Legend of Korra."
        textView.textColor = .black
        textView.textAlignment = .justified
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.systemFont(ofSize: 18, weight: .light)
        view.addSubview(textView)
        
    
        setupContraints()
    }
    
    @objc func followButtonTapped(){
        if followButton.titleLabel?.text == "Follow"{
            followButton.setTitle("Following", for: .normal)
            followButton.setTitleColor(.white, for: .normal)
            followButton.backgroundColor = .blue
            
        } else{
            followButton.setTitle("Follow", for: .normal)
            followButton.setTitleColor(.blue, for: .normal)
            followButton.backgroundColor = .white
        }
    }
    
    func setupContraints(){
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: 250),
            image.heightAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            followButton.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 15),
            followButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            followButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        
//        NSLayoutConstraint.activate([
//            transButton.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 15),
//            transButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            followButton.widthAnchor.constraint(equalToConstant: 100)
//        ])

        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: followButton.bottomAnchor, constant: 15),
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5)
        ])
    }
}

 
