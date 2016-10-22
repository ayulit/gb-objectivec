//
//  DetailViewController.m
//  ToDo List
//
//  Created by Андрей Литвинов on 22/10/16.
//  Copyright © 2016 Andrey Litvinov. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
// properties
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
