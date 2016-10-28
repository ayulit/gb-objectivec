//
//  DetailViewController.m
//  ToDo List
//
//  Created by Андрей Литвинов on 22/10/16.
//  Copyright © 2016 Andrey Litvinov. All rights reserved.
//

#import "DetailViewController.h"

// We've subsribed on protocol UITextFieldDelegate
@interface DetailViewController ()<UITextFieldDelegate>
// properties
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
// methods declaration
@property (weak, nonatomic) IBOutlet UIButton *buttonSave;

@end

// methods implementation
@implementation DetailViewController

// this method is like a constructor,
// it is load first while app started
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // for button we need to call method
    // we will use pointer to method, called Selector
    // Method will be run when event happens
    // event will be UIControlEventTouchUpInside - touch and release button - all is simple!
    [self.buttonSave addTarget:self action:@selector(save) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) save {
    NSLog(@"save");

}

// what if user presses button Return
- (BOOL)textFieldShouldReturn:(UITextField *)textField {

    // we need OUR text field
    if ([textField isEqual:self.textField]) {
        
        // calling of metod of object textField
        // resignFirstResponder method closes keyboard on screen
        [self.textField resignFirstResponder];
        
    }
    
    return YES;
}

@end
