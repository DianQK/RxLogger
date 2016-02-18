//
//  ViewController.swift
//  RxLogger
//
//  Created by 宋宋 on 16/2/18.
//  Copyright © 2016年 DianQK. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myJust(1).debug().log().subscribeNext {
            print("\($0)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func myJust<E>(element: E) -> Observable<E> {
        return Observable.create { observer in
            observer.on(.Next(element))
            observer.on(.Completed)
            return NopDisposable.instance
        }
    }
}