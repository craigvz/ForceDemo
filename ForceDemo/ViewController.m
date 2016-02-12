//
//  ViewController.m
//  ForceDemo
//
//  Created by Craig Vanderzwaag on 2/11/16.
//  Copyright © 2016 blueHula Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable){
        
        if (touch.force >= touch.maximumPossibleForce) {
            _forceLabel.text = @"385+ grams";
        } else {
            CGFloat force = touch.force;
            ///touch.maximumPossibleForce;
            CGFloat grams = force *385;
            NSLog(@"force %f", force);
            int roundedGrams = (int)grams;
            _forceLabel.text = [NSString stringWithFormat:@"%i grams", roundedGrams];
            
        }
    }
    
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _forceLabel.text = @"0 grams";
}

@end
