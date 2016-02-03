//
//  DetailViewController.swift
//  Flicks
//
//  Created by Labuser on 2/1/16.
//  Copyright © 2016 wustl. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var posterimageview: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var overviewlabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    var movie: NSDictionary!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        
        let title = movie["title"] as! String
        titlelabel.text = title
        let overview = movie["overview"] as! String
        overviewlabel.text = overview
        overviewlabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w500"
        
        if let posterPath = movie["poster_path"] as? String{
            let imageURL = NSURL(string: baseURL + posterPath)
            posterimageview.setImageWithURL(imageURL!)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
