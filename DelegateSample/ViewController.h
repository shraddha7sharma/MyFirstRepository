//
//  ViewController.h
//  DelegateSample
//
//  Created by Shraddha sharma on 23/03/17.
//  Copyright © 2017 Shraddha sharma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"


@interface ViewController : UIViewController<SecondViewControllerProtocol>
@property (strong, nonatomic) IBOutlet UILabel *lblHello;
- (IBAction)Next_Pressed:(id)sender;


@end

