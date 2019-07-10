//
//  ViewController.swift
//  QuakeAlert
//
//  Created by Jackson Wang on 7/10/19.
//  Copyright © 2019 Jackson Wang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    /**
     *   LAST UPDATED: 7/10
    **/

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        // set up navigation items
        let barRightItemImage = UIImage(named: "setting")
        let barLeftItemImage = UIImage(named: "map")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: barRightItemImage, style: .plain, target: self, action: #selector(goToSetting))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: barLeftItemImage, style: .plain, target: self, action: #selector(goToMap))
    }
    
    @objc func goToSetting() {
        // push to setting view controller
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let settingViewController  = storyBoard.instantiateViewController(withIdentifier: "SettingViewController")
        self.present(settingViewController, animated: true, completion: nil)
    }
    

}

