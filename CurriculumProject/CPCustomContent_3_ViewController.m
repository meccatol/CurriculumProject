//
//  CPCustomContent_3_ViewController.m
//  CurriculumProject
//
//  Created by Hyungsung Kim on 2017. 6. 29..
//  Copyright © 2017년 meccatol_iMac. All rights reserved.
//

#import "CPCustomContent_3_ViewController.h"

@interface CPCustomContent_3_ViewController ()

@end

@implementation CPCustomContent_3_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.layer.borderColor = [UIColor redColor].CGColor;
    self.view.layer.borderWidth = 1.f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dismissButtonHandler:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
