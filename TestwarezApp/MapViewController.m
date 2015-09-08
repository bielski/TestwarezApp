//
//  Created by ewa on 04.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>

@interface MapViewController ()

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateCoordinates];
    [self makePointAnnotation];
    [self addAccessibilityLabels];
}

- (void)addAccessibilityLabels {
    self.mapView.accessibilityLabel = @"mapView";
}

- (void)updateCoordinates {
    MKCoordinateSpan span = MKCoordinateSpanMake(0.20f, 0.20f);
    CLLocationCoordinate2D coordinates = {52.485824, 20.967262};
    MKCoordinateRegion region = {coordinates, span};
    
    [self.mapView setRegion:region animated:YES];
}

- (void)makePointAnnotation {
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = CLLocationCoordinate2DMake(52.485824, 20.967262);
    annotation.title = @"Hotel Windsor";
    annotation.subtitle = @"Jachranka 75";
    
    [self.mapView addAnnotation:annotation];
}

@end
