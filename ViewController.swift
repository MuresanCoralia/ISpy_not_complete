//
//  ViewController.swift
//  ISpy
//
//  Created by Wolfpack Digital on 29.07.2021.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate
{

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        
        updateZoomFor(size: view.bounds.size)
        
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView?
    {
        return imageView
    }
    
    func updateZoomFor(size: CGSize)
    {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }

}

