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
    
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myEvent(1).log().subscribe { _ in
            
        }.addDisposableTo(disposeBag)
    }
    
    func myEvent<E>(element: E) -> Observable<E> {
        return Observable.create { observer in
            observer.on(.Next(element))
            observer.onError(Error())
            return NopDisposable.instance
        }
    }
}

struct Error: ErrorType { }