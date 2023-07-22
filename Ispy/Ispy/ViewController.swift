//
//  ViewController.swift
//  Ispy
//
//  Created by Sanjay Krishna on 11/01/23.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let viewController = UIScrollViewDelegate.self
        
        // Do any additional setup after loading the view.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    func updateZoomFor(size :CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size:view.bounds.size)
        
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    


}

