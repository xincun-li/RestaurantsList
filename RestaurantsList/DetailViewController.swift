//
//  DetailViewController.swift
//  Detail View of Restaurants List
//
//  Created by Xincun Li on 3/1/2016.
//  Copyright © 2016 Xincun Li. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController, MKMapViewDelegate {

	@IBOutlet weak var previewImage: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var ratingView: CosmosView!
	@IBOutlet weak var addressLabel: UILabel!
	@IBOutlet weak var mapView: MKMapView!

	let annotation = MKPointAnnotation()

	var restaurant: Restaurant? {
		didSet {
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		self.mapView.delegate = self
		self.mapView.addAnnotation(annotation)

		self.previewImage.layer.cornerRadius = 4.0
		self.previewImage.layer.masksToBounds = true

		self.mapView.layer.cornerRadius = 4.0
		self.mapView.layer.masksToBounds = true

		if let restaurant = self.restaurant {
			self.title = restaurant.name
			self.previewImage.setImageWithUrl(restaurant.imageUrl, contentMode: UIViewContentMode.ScaleAspectFill)

			self.nameLabel.text = "🎁\(restaurant.name)"
			self.ratingView.rating = restaurant.rating
			self.ratingView.text = "Reviews:\(restaurant.reviews)"
			self.ratingView.updateOnTouch = false
			self.addressLabel.text = restaurant.address
			let location = CLLocationCoordinate2D(latitude: restaurant.latitude, longitude: restaurant.longitude)
			annotation.coordinate = location
			self.mapView.setRegion(MKCoordinateRegion(center: location, span: MKCoordinateSpanMake(0.01, 0.01)), animated: false)
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
		if !(annotation is MKPointAnnotation) {
			return nil
		}

		let reuseId = "annotation"

		var pinView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId) as? MKPinAnnotationView
		if pinView == nil {
			pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
			pinView!.canShowCallout = true
			pinView!.animatesDrop = true
			pinView!.pinTintColor = UIColor.greenColor()
		}
		else {
			pinView!.annotation = annotation
		}
		return pinView
	}
}

