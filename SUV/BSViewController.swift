//
//  BSViewController.swift
//  SUV
//
//  Created by sqluo on 2017/1/12.
//  Copyright © 2017年 sqluo. All rights reserved.
//

import UIKit

class BSViewController: UIViewController {

    public var hhha: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

    
        print(hhha)
        
        
        let a = "123"
        let b = "哈哈"
        
        let c = a + b
        
        let d = "\(a)\(b)"
        
        print(c,d)
        
        
        let asvc = ASViewController()
        asvc.sayHello("草泥马")
        self.navigationController?.pushViewController(asvc, animated: true)
    }
    
    func textInto(_ nub: Int) -> String{
        return "这是一个数字：\(nub)"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
