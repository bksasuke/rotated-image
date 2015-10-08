//
//  DemoSlider.m
//  UISlider
//
//  Created by student on 9/30/15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import "DemoSlider.h"

@interface DemoSlider ()



{
    
//  NSTimer* _timer;
    __weak IBOutlet UISlider *slider;

}
@property (weak, nonatomic) IBOutlet UIImageView *object;
@end

@implementation DemoSlider

- (void)viewDidLoad {
    [super viewDidLoad];
    
    slider.transform = CGAffineTransformMakeRotation(2*M_PI_2);
    slider.tintColor = [UIColor blueColor];
    slider.thumbTintColor = [UIColor grayColor];


}
- (IBAction)sliderDidChangeValue:(id)sender {
    
   CGFloat scale = slider.value;
//    _object.transform = CGAffineTransformMakeScale(scale, scale); // slide affect scale 
    
  _object.transform = CGAffineTransformMakeRotation(scale  * 2*M_PI / slider.maximumValue);
    //slide affect rotation
}

@end
