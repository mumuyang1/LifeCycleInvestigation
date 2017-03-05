//
//  ViewController.swift
//  LifeCycleInvestigate
//
//  Created by Yanzi Li on 3/6/17.
//  Copyright © 2017 Yanzi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func loadView() {
    super.loadView()
    print("--loadView: The first will be called if this function is overrided")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("--viewDidLoad: The second method will be called and it will be called only once")
    view.addSubview(UIView())
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("--viewWillAppear: The third method will be called and will be called many times before show the view")
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    print("--viewWillLayoutSubviews: will be called many times")
  }
  
  //init初始化不会触发layoutSubviews
  //addSubview会触发layoutSubviews
  //设置view的Frame会触发layoutSubviews，当然前提 是frame的值设置前后发生了变化
  //滚动一个UIScrollView会触发layoutSubviews
  //旋转Screen会触发父UIView上的layoutSubviews事件
  //改变一个UIView大小的时候也会触发父UIView上的layoutSubviews事件
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    print("--viewDidLayoutSubviews: will be called after viewWillLayoutSubviews and can be called many times")
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("--viewDidAppear: It's called after the view shows in the screen")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
   print("--viewWillDisappear: It will be called when the view is going to disappear but not disappear")
  }
  
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("--viewDidAppear: It will be called after the view disappear")
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

