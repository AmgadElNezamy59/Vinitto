//
//  OnBoardViewController.swift
//  Vinitto
//
//  Created by Amgad Salah on 03/08/2023.
//

import UIKit

class PickerViewController: UIPageViewController,UIPageViewControllerDelegate,UIPageViewControllerDataSource {
    
    var onboard = [OnBoard]()
    var arrContainers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboard.append(OnBoard(image: UIImage(named: "onboard1")!, description: "بدأت شركة فينيتو نشاطها في دبي سنة 2014 ثم انتقلت الي مصر عام 2017 بأحدث تكنولوجيا تصنيع الاحذية من نوعيه التريكو التي تكون مكوناتها الرئيسيه غزل مصنع وبولستر وليكرا لراحه القدمين. وقد حرصنا دائما في منتجاتنا ان تكون من افضل الخامات والتصنيع يكون باحدث الانظمة وطبقاً للمعايير العالمية والتي تضمن لك منتجا ذات جودة عالية وذات عمر افتراضي عالي ويتناسب مع طبيعه مصر"))
        
        
        
        
        
        view.backgroundColor = UIColor.red
        
        
        let vc1 = self.storyboard?.instantiateViewController(identifier: "page1")
        let vc2 = self.storyboard?.instantiateViewController(identifier: "page1")
        let vc3 = self.storyboard?.instantiateViewController(identifier: "page1")
        
        arrContainers.append(vc1!)
        arrContainers.append(vc2!)
        arrContainers.append(vc3!)
        
        delegate = self
        dataSource = self
        
        if let firstVC = arrContainers.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let currentIndex = arrContainers.firstIndex(of: viewController) else {
            return nil
        }
        let afterIndex = currentIndex + 1
        guard afterIndex < arrContainers.count else {
            return arrContainers.first
        }
        return arrContainers[afterIndex]
        
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
       
        
        guard let currentIndex = arrContainers.firstIndex(of: viewController) else{
            return nil
        }
        let previousIndex = currentIndex - 1
        guard previousIndex >= 0 else {
            return arrContainers.last
        }
        return arrContainers[previousIndex]
        
        
        
        
        
        
        
    }
    
    
    func presentationCount (for pageViewController: UIPageViewController) -> Int {
        return arrContainers.count
    }
}
    func presentationIndex (for pageViewController: UIPageViewController) -> Int {
        return 0
    
    
    
    
}


struct OnBoard{
    var image :UIImage
    var description : String
    
    init(image: UIImage, description: String) {
        self.image = image
        self.description = description
    }

}
