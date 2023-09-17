//
//  ViewController.swift
//  concurrentcy
//
//  Created by Cambrian on 2023-09-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var callPokeAPI: UIButton!
    
    @IBOutlet weak var callMmobAPI: UIButton!
    
    @IBOutlet weak var callDigimonAPI: UIButton!
    
    @IBAction func callBoredApi(_ sender: Any) {
        Task {
            do{
                await print( try API_Helper.fetchBoredAPI())
            } catch API_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Please insert connect url")
            } catch let err {
                print(err)
            }
        }
    }
    
    @IBAction func callMmobombApi(_ sender: Any) {
        Task {
            do{
                await print( try API_Helper.fetchMmobombAPI())
            } catch API_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Please insert connect url")
            } catch let err {
                print(err)
            }
        }
    }
    
    @IBAction func callDigimonApi(_ sender: Any) {
        Task {
            do{
                await print( try API_Helper.fetchDigimonAPI())
            } catch API_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Please insert connect url")
            } catch let err {
                print(err)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


}

