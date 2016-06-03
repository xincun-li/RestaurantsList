//
//  Entity.swift
//  entity of Restaurant
//
//  Created by Xincun Li on 3/1/2016.
//  Copyright © 2016 Xincun Li. All rights reserved.
//

import Foundation

class Entity {
	static func initRestaurants() -> [Restaurant] {
		let restaurants: [Restaurant] = [
			Restaurant(name: "Alinea", address: "1723 North Halsted St., Chicago, IL 60614-5501", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-s/06/ac/4d/ea/alinea.jpg", latitude: 41.91342, longitude: -87.64829, rating: 3.8, reviews: 150),
			Restaurant(name: "Bavette's Bar and Boeuf", address: "218 W Kinzie, Chicago, IL 60654", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-s/09/da/82/5c/bavette-s-bar-and-boeuf.jpg", latitude: 41.88934, longitude: -87.63495, rating: 3.9, reviews: 250),
			Restaurant(name: "Mexique", address: "50 W Randolph St, Chicago, IL 60601", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-f/05/ef/32/be/mexique.jpg", latitude: 41.88434, longitude: -87.630005, rating: 4.0, reviews: 350),
			Restaurant(name: "Eddie V's Prime Seafood", address: "521 N Rush Street Suite R01, Chicago, IL 60611", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-f/06/12/6d/da/eddie-v-s.jpg", latitude: 41.891754, longitude: -87.62515, rating: 4.1, reviews: 450),
			Restaurant(name: "Bohemian House", address: "1529 W Chicago Ave, Chicago, IL 60622", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-s/06/69/7d/2b/getlstd-property-photo.jpg", latitude: 41.896065, longitude: -87.66607, rating: 4.2, reviews: 550),
			Restaurant(name: "Avec", address: "615 W Randolph St, Chicago, IL 60661-2203", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-f/01/f9/d3/4d/pork-shoulder.jpg", latitude: 41.893055, longitude: -87.62417, rating: 4.3, reviews: 650),
			Restaurant(name: "Joe's Seafood, Prime Steak & Stone Crab", address: "60 E Grand Ave, Chicago, IL 60611", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-s/07/49/37/6e/joe-s-seafood-prime-steak.jpg", latitude: 41.891685, longitude: -87.625435, rating: 4.4, reviews: 750),
			Restaurant(name: "Au Cheval", address: "800 W. Randolph, Chicago, IL 60607", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-s/0a/55/45/e9/au-cheval.jpg", latitude: 41.8845, longitude: -87.6475, rating: 4.5, reviews: 850),
			Restaurant(name: "Girl & The Goat", address: "809 W Randolph St, Chicago, IL 60607", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-s/02/8f/de/f5/filename-dscn0861-jpg.jpg", latitude: 41.88413, longitude: -87.64797, rating: 4.6, reviews: 950),
			Restaurant(name: "RPM Steak", address: "1529 W Chicago Ave, Chicago, IL 60622", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-s/07/9d/a0/55/rpm-steak.jpg", latitude: 41.88921, longitude: -87.63024, rating: 4.7, reviews: 1050),
			Restaurant(name: "Smoque BBQ", address: "3800 N Pulaski Rd, Chicago, IL 60641-3197", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-s/02/89/5f/99/filename-smoque-jpg-thumbnail0.jpg", latitude: 41.950138, longitude: -87.72765, rating: 4.8, reviews: 1150),
			Restaurant(name: "Bandera Restaurant", address: "535 N Michigan Ave, Ste 208, Chicago, IL 60611-3819", imageUrl: "http://media-cdn.tripadvisor.com/media/photo-f/06/fc/83/2d/bandera-restaurant.jpg", latitude: 41.892097, longitude: -87.62419, rating: 4.9, reviews: 1250)
		]

		return restaurants
	}

//    static func LoadRestaurants(){
//        if let checkedUrl = NSURL(string: "http://api.tripadvisor.com/api/partner/2.0/location/35805/restaurants?key=HackTripAdvisor-ade29ff43aed") {
//            getResponse(checkedUrl)
//        }
//    }
//
//
//    static func getDataFromUrl(url:NSURL, completion: ((data: NSData?, response: NSURLResponse?, error: NSError? ) -> Void)) {
//        NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
//            completion(data: data, response: response, error: error)
//            }.resume()
//    }
//
//    static func getResponse(url: NSURL){
//        getDataFromUrl(url) { (data, response, error)  in
//            dispatch_async(dispatch_get_main_queue()) { () -> Void in
//                guard let data = data where error == nil else { return }
//                restaurants = restaurants + parseData(data)
//            }
//        }
//    }
}
