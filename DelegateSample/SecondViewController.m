//
//  SecondViewController.m
//  DelegateSample
//
//  Created by Shraddha sharma on 23/03/17.
//  Copyright © 2017 Shraddha sharma. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.txtName.text = self.name;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)back_Pressed:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
- (IBAction)Update_Pressed:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(nameUpdated:)]) {
        [self.delegate nameUpdated:self.txtName.text];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
