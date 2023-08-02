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
        
        
        
        onboard.append(OnBoard(image: UIImage(named: "onboard2")!, description:"يتم الشحن من المصنع مباشره الى العميل عن طريق شركات الشحن المعتمده لدي المصنع نظير رسوم شحن كالتالي. يتم تحصيل رسوم شحن  50 جنيه مصري عن الطلب بالكامل (حذاء واحد او اكثر) لاي منطقة من المناطق المعتمده لدينا في الشحن . في حالة رغبتك بفتح الطلب ومعاينته قبل الدفع فما عليك الا ان تدفع لمندوب الشحن قيمة الشحن المقررة 50 جنيه مصري المناطق التي يتم لها الشحن حاليا: القاهره – الاسكندرية – مدن الدلتا – مدن القناه"))
        
        
        
        onboard.append(OnBoard(image: UIImage(named: "onboard3")!, description: "نتفهم ان الاحذية من الاصناف التي قد تحتاج الي تغيير المقاسات او الموديلات او الالوان ولهذا فقد وضعنا سياسة ارتجاع او استبدال مرنه تناسب الجميع وهي كالاتي: اذا وصلك المنتج وبه اي عيب صناعه او خطأ في المقاس و اللون او الموديل فما عليك الا ان تقدم طلب ارجاع او استبدال في خلال 14 يوم من تاريخ وصول المنتج لك وتحدد في سبب طلب الارجاع (بشرط عدم استخدام الحذاء ووجوده بالحاله التي وصلتك)  وسنقوم بارسال مندوب الشحن لاستلام المنتج منك ويتم فحصه من خلال فريق عمل المصنع ثم نقوم باستبداله مجانا اذا تبين ان الخطأ من جهتنا."))
        
        
        
        onboard.append(OnBoard(image: UIImage(named: "onboard4")!, description: "تسوق بأمان عبر موقعنا فهو مجهز بشهاده SSL المعتمدة عالميا لأمان بيانات العملاء. التسوق يتم من خلال المصنع مباشرة من المنتج الي المستهلك."))
        
        
        
        
        
        
        view.backgroundColor = UIColor.red
        
        
        //        let vc2 = self.storyboard?.instantiateViewController(identifier: "page1")
        //        let vc3 = self.storyboard?.instantiateViewController(identifier: "page1")
        //
        
        
        let vc1 = self.storyboard?.instantiateViewController(identifier: "page1") as! OnBoardViewController
        vc1.desc = onboard[0].description
        vc1.imag = onboard[0].image
        
        let vc2 = self.storyboard?.instantiateViewController(identifier: "page1") as! OnBoardViewController
        vc1.desc = onboard[1].description
        vc1.imag = onboard[1].image
        
        let vc3 = self.storyboard?.instantiateViewController(identifier: "page1") as! OnBoardViewController
        vc1.desc = onboard[2].description
        vc1.imag = onboard[2].image
        
        let vc4 = self.storyboard?.instantiateViewController(identifier: "page1") as! OnBoardViewController
        vc1.desc = onboard[3].description
        vc1.imag = onboard[3].image
        
        
        arrContainers.append(vc1)
        arrContainers.append(vc2)
        arrContainers.append(vc3)
        arrContainers.append(vc4)
        
        
        
        
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
