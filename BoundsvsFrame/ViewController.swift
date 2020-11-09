//
//  ViewController.swift
//  BoundsvsFrame
//
//  Created by Fomagran on 2020/11/09.
//

import UIKit

class ViewController: UIViewController {
    
    private let greenView:UIView = {
       let view = UIView()
        view.backgroundColor = .systemGreen
        return view
    }()
    private let blackView:UIView = {
       let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        greenView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        blackView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)

        view.addSubview(greenView)
        greenView.addSubview(blackView)

        //frame 이동 예시
        UIView.animate(withDuration: 5) {
            self.greenView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        }
        //bounds 이동 예시
        UIView.animate(withDuration: 5) {
            self.greenView.bounds.origin = CGPoint(x: -50, y: -50)
        }
        
    }
    
}

