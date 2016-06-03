//
//  Restaurant.swift
//  model of Restaurant
//
//  Created by xincun li on 2/29/2016.
//  Copyright © 2016 Xincun Li. All rights reserved.
//

import Foundation

class Restaurant {

	init(name: String,
		address: String,
		imageUrl: String,
		latitude: Double,
		longitude: Double,
		rating: Double,
		reviews: Int) {
			self.name = name
			self.address = address
			self.imageUrl = imageUrl
			self.latitude = latitude
			self.longitude = longitude
			self.rating = rating
			self.reviews = reviews
	}

	var name: String
	var imageUrl: String
	var address: String
	var latitude: Double
	var longitude: Double
	var rating: Double
	var reviews: Int
}