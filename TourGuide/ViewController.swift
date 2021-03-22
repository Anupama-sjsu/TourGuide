//
//  ViewController.swift
//  RecipeApp
//
//  Created by Nakul Tirumalai on 3/19/21.
//  Copyright © 2021 AnupamaKurudi. All rights reserved.
//

import UIKit
import CardSlider
import FloatingPanel
struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
    
}

class ViewController: UIViewController, CardSliderDataSource, FloatingPanelControllerDelegate{
    
    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()
    override func viewDidLoad() {
    super.viewDidLoad()

        
        //That other thing starts here
        let fpc = FloatingPanelController()
        fpc.delegate = self
        guard let contentVC = storyboard?.instantiateViewController(identifier: "fpc_content") as? ContentViewController
                else{
                   return
              }
        
        fpc.set(contentViewController: contentVC)
        fpc.addPanel(toParent: self)
        
        // the Beach tab content starts here
        data.append(Item(image: UIImage(named: "Muir woods")!,
                         rating: nil,
                         title: "Muir woods National Park",
                         subtitle: "Beautiful Evergreen Trees" ,
                        description: "Muir Woods National Monument is part of California’s Golden Gate National Recreation Area, north of San Francisco. It’s known for its towering old-growth redwood trees. Trails wind among the trees to Cathedral Grove and Bohemian Grove, and along Redwood Creek. The Ben Johnson and Dipsea trails climb a hillside for views of the treetops, the Pacific Ocean and Mount Tamalpais in adjacent Mount Tamalpais State Park. " ))
        
        data.append(Item(image: UIImage(named: "yosemite")!,
                     rating: nil,
                     title: "Yosemite National Park",
                     subtitle: "California’s Sierra Nevada mountains" ,
                    description: "It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome. In Yosemite Village are shops, restaurants, lodging, the Yosemite Museum and the Ansel Adams Gallery, with prints of the photographer’s renowned black-and-white landscapes of the area." ))
        
        data.append(Item(image: UIImage(named: "zion national")!,
                     rating: nil,
                     title: "Zion National Park",
                     subtitle: "A southwest Utah nature preserve distinguished by Zion Canyon’s steep red cliffs" ,
                    description: " Zion Canyon Scenic Drive cuts through its main section, leading to forest trails along the Virgin River. The river flows to the Emerald Pools, which have waterfalls and a hanging garden. Also along the river, partly through deep chasms, is Zion Narrows wading hike." ))
        
        data.append(Item(image: UIImage(named: "yellowstone")!,
                     rating: nil,
                     title: "Yellowstone National Park",
                     subtitle: "Headwaters of the Yellowstone River, from which it takes its historical name" ,
                    description: "The Yellowstone Caldera is the largest volcanic system in North America, and in the world, it is only rivalled by the Lake Toba Caldera on Sumatra. It has been termed a supervolcano because the caldera was formed by exceptionally large explosive eruptions. The magma chamber that lies under Yellowstone is estimated to be a single connected chamber, about 37 miles (60 km) long, 18 miles (29 km) wide, and 3 to 7 miles (5 to 12 km) deep.[73] The current caldera was created by a cataclysmic eruption that occurred 640,000 years ago, which released more than 240 cubic miles (1,000 km³) of ash, rock and pyroclastic materials.[74] This eruption was more than 1,000 times larger than the 1980 eruption of Mount St. Helens.[75] It produced a caldera nearly 5/8 of a mile (1 km) deep and 45 by 28 miles (72 by 45 km) in area and deposited the Lava Creek Tuff, a welded tuff geologic formation. The most violent known eruption, which occurred 2.1 million years ago, ejected 588 cubic miles (2,450 km³) of volcanic material and created the rock formation known as the Huckleberry Ridge Tuff and created the Island Park Caldera.[76] A smaller eruption ejected 67 cubic miles (280 km³) of material 1.3 million years ago, forming the Henry's Fork Caldera and depositing the Mesa Falls Tuff.[75]" ))
        
    }
    

    
    @IBAction func didTapButton(){
        
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Hello there"
        vc.modalPresentationStyle = .fullScreen
        //vc.preferredContentSize = CGSize(width: 200, height: 300)
        present(vc, animated: true)
        
        
    }
    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    
}
