//
//  ViewController.m
//  ReversedStringTest
//
//  Created by Aleksandr Pronin on 10/19/16.
//  Copyright © 2016 Aleksandr Pronin. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Reverse.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *initialStringTextField;
@property (weak, nonatomic) IBOutlet UILabel *reversedStringLabel;

- (IBAction)reverseStringAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.initialStringTextField.text = @"Apple is ";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)reverseStringAction:(id)sender {
    self.reversedStringLabel.text = [NSString reversedStringWithString:self.initialStringTextField.text];
}

@end
