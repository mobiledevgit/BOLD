//
//  MenuViewController.swift
//  BOLD
//
//  Created by admin on 6/4/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var usertxt: UILabel!
    @IBOutlet weak var fullnametxt: UILabel!
    @IBOutlet weak var statusView: UIView!

    
    let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.statusView.backgroundColor = bgNavigationColor
        
        usertxt.text = user
        fullnametxt.text = fullname
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CalendarBtn(sender: AnyObject) {
        hideSideMenuView()
    }
    
    @IBAction func PersonalBtn(sender: AnyObject) {
        
        let personalController = mainStoryboard.instantiateViewControllerWithIdentifier("personal")
        sideMenuController()?.setContentViewController(personalController)
    }

    @IBAction func ContadoresBtn(sender: AnyObject) {
        
        let contadoresController = mainStoryboard.instantiateViewControllerWithIdentifier("contadores")
        sideMenuController()?.setContentViewController(contadoresController)
    }

    @IBAction func PermisosBtn(sender: AnyObject) {
    
        let destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("permisos")
        sideMenuController()?.setContentViewController(destViewController)
    }
    
    @IBAction func SiteBtn(sender: AnyObject) {
        let destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("site")
        sideMenuController()?.setContentViewController(destViewController)
    }
    @IBAction func LogoutBtn(sender: AnyObject) {
        monthlycache.removeAllObjects();
        let destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("Login")
        sideMenuController()?.setContentViewController(destViewController)
    }
    override func  preferredStatusBarStyle()-> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}