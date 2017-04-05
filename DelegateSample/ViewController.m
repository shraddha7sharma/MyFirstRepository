//
//  ViewController.m
//  DelegateSample
//
//  Created by Shraddha sharma on 23/03/17.
//  Copyright © 2017 Shraddha sharma. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.lblHello.text=@"hi";
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
};


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)nameUpdated:(NSString*)newName{

 self.lblHello.text = newName;
}

- (IBAction)Next_Pressed:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    SecondViewController * secondVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secondVC.name=self.lblHello.text;
    secondVC.delegate = self;
        [self presentViewController:secondVC animated:YES completion:nil];
    
  
   }
@end
