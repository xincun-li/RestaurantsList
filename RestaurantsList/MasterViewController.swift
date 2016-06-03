//
//  MasterViewController.swift
//  Master View of RestaurantsList
//
//  Created by Xincun Li on 3/1/2016.
//  Copyright © 2016 Xincun Li. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

	var detailViewController: DetailViewController? = nil
	let restaurants = Entity.initRestaurants()

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "loadDetail" {
			if let indexPath = self.tableView.indexPathForSelectedRow {
				let restaurant = restaurants[indexPath.row]
				let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewController
				controller.restaurant = restaurant
				controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
				controller.navigationItem.leftItemsSupplementBackButton = true
			}
		}
	}

	// MARK: - Table View
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return restaurants.count
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("RestaurantTableViewCell", forIndexPath: indexPath) as! RestaurantTableViewCell

		let restaurant = restaurants[indexPath.row]

		cell.nameLabel.text = "🎁\(indexPath.row + 1). \(restaurant.name)"

		cell.previewImage.setImageWithUrl(restaurant.imageUrl, contentMode: UIViewContentMode.ScaleAspectFill)
		cell.previewImage.layer.cornerRadius = 4.0
		cell.previewImage.layer.masksToBounds = true

		cell.ratingView.rating = restaurant.rating
		cell.ratingView.text = "Reviews: \(restaurant.reviews)"
		cell.ratingView.updateOnTouch = false

		cell.addressLabel.text = "Address: \(restaurant.address)"

		return cell
	}

	override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
		return true
	}

    override func didMoveToParentViewController(parent: UIViewController?) {
        super.didMoveToParentViewController(parent)
        
        if parent != nil && self.navigationItem.titleView == nil {
            initNavigationItemTitleView()
        }
    }
    
    private func initNavigationItemTitleView() {
        let titleView = UILabel()
        titleView.text = "Restaurants List of Chicago"
        titleView.font = UIFont(name: "HelveticaNeue-Medium", size: 17)
        let width = titleView.sizeThatFits(CGSizeMake(CGFloat.max, CGFloat.max)).width
        titleView.frame = CGRect(origin:CGPointZero, size:CGSizeMake(width, 500))
        self.navigationItem.titleView = titleView
        
        let recognizer = UITapGestureRecognizer(target: self, action: "titleWasTapped")
        titleView.userInteractionEnabled = true
        titleView.addGestureRecognizer(recognizer)
    }
    
    @objc private func titleWasTapped() {
        NSLog("Hello, titleWasTapped!")
        self.tableView.setContentOffset(CGPointMake(0, -self.tableView.frame.height   + UIApplication.sharedApplication().statusBarFrame.height ), animated:true)
    }
    
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Restaurants List of Chicago"

		self.tableView.rowHeight = 130

		if let split = self.splitViewController {
			let controllers = split.viewControllers
			self.detailViewController = (controllers[controllers.count - 1] as! UINavigationController).topViewController as? DetailViewController
		}
	}

	override func viewWillAppear(animated: Bool) {
		self.clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
		super.viewWillAppear(animated)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}
