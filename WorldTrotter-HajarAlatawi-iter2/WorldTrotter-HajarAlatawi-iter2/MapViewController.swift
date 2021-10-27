
import UIKit
import MapKit


class MapViewController: UIViewController {
  
  var mapView: MKMapView!
  var pointOfInterestLabel: UILabel!
  var pointOfInterestSwitch: UISwitch!
  
  
  override func loadView() {
    mapView = MKMapView()
    
    view = mapView
    let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.addTarget(self,
                               action: #selector(mapTypeChanged(_:)),
                               for: .valueChanged)
    
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)
    
    let topConstraint =
      segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                            constant: 8)
    
    let margins = view.layoutMarginsGuide
    let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
    
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    
    let pointOfInterestLabel = UILabel()
    pointOfInterestLabel.text = "Points of Interest"
    pointOfInterestLabel.translatesAutoresizingMaskIntoConstraints = false
    
    let toggle = UISwitch()
    toggle.addTarget(self, action: #selector(toggleChanged(_:)),
                     for: .valueChanged)
    toggle.translatesAutoresizingMaskIntoConstraints = false
    
    
    view.addSubview(segmentedControl)
    view.addSubview(pointOfInterestLabel)
    view.addSubview(toggle)
    
    
    
    //UILabel Constraints
    let LTopConstraint = pointOfInterestLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor,
                                                                   constant: 15)
    let LLeadingConstraint = pointOfInterestLabel.leadingAnchor.constraint(equalTo: segmentedControl.leadingAnchor)
    
    LTopConstraint.isActive = true
    LLeadingConstraint.isActive = true
    
    //UISwitch constraints
    let SWTopConstraint = toggle.centerYAnchor.constraint(equalTo: pointOfInterestLabel.centerYAnchor)
    let SWLeadingConstraint = toggle.leadingAnchor.constraint(equalTo: pointOfInterestLabel.trailingAnchor,
                                                              constant: 10)
    
    SWTopConstraint.isActive = true
    SWLeadingConstraint.isActive = true
    
  }
  
  
  @objc func toggleChanged(_ toggleControl: UISwitch) {
    if toggleControl.isOn {
      mapView.pointOfInterestFilter = .includingAll
    } else {
      mapView.pointOfInterestFilter = .excludingAll
    }
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("MapViewController loaded its view.")
  }
  
  
  @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
    switch segControl.selectedSegmentIndex {
    case 0:
      mapView.mapType = .standard
    case 1:
      mapView.mapType = .hybrid
    case 2:
      mapView.mapType = .satellite
    default:
      break }
  }
  
}

