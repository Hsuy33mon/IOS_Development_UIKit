//
//  ViewController.swift
//  map
//
//  Created by Hannah on 17/8/2567 BE.
//

import UIKit
import MapKit
class ViewController: UIViewController,MKMapViewDelegate {
    
    
    @IBOutlet weak var map: MKMapView!
    var information = [placeInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        readjson()
        map.delegate = self
        
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 13.612320, longitude: 100.836808)
        annontation.title = "ABAC Center"
        map.addAnnotation(annontation)
        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        map.setRegion(region, animated: true)
        
        addAnnotations()
    }
    
    func readjson(){

        guard let url = Bundle.main.url(forResource: "abac_location", withExtension: "json") else {
                   print("JSON file not found")
                   return
               }
                do {
                   let data = try Data(contentsOf: url)
                   let decoder = JSONDecoder()
                   let decoded = try decoder.decode(places.self, from: data)
                   information = decoded.Places
               } catch {
                   print("Error \(error)")
               }

    }
    func addAnnotations(){
        for place in information{
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: place.LocationLat, longitude: place.LocationLong)
            annotation.title = place.FacultyName
            annotation.subtitle = "\(place.Abbreviation)\nLat: \(place.LocationLat), Long: \(place.LocationLong)"
            map.addAnnotation(annotation)
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let identifier = "PlaceAnnotation"
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
            
            if annotationView == nil {
                annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            } else {
                annotationView?.annotation = annotation
            }
            
            return annotationView
        }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if let annotation = view.annotation {
            let facultyName = annotation.title ?? ""
            let subtitle = annotation.subtitle ?? ""
            
            let alert = UIAlertController(title: facultyName, message: subtitle, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
            mapView.deselectAnnotation(annotation, animated: true)
        }
    }


}

