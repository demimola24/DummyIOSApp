//
//  ViewController.swift
//  concurrentcy
//
//  Created by Cambrian on 2023-09-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var callPokeAPI: UIButton!
    
    @IBAction func callPokeApi(_ sender: Any) {
        Task {
            do{
                await print( try PokeAPI_Helper.fetch())
            } catch {
                print(error)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


}

