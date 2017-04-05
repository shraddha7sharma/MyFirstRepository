//
//  SecondViewController.h
//  DelegateSample
//
//  Created by Shraddha sharma on 23/03/17.
//  Copyright © 2017 Shraddha sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerProtocol <NSObject>
-(void)nameUpdated:(NSString*)newName;
@end


@interface SecondViewController : UIViewController

- (IBAction)Update_Pressed:(id)sender;

- (IBAction)back_Pressed:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *txtName;

@property (weak,nonatomic) id <SecondViewControllerProtocol> delegate;

@property (nonatomic,strong) NSString* name;

@end
