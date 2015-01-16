//
//  ViewController.m
//  MVVMTutorial
//
//  Created by Siba Prasad Hota  on 1/8/15.
//  Copyright (c) 2015 Wemakeappz. All rights reserved.
//

#import "ViewController.h"
#import "PersonViewModel.h"
#import "Person.h"

@interface ViewController ()

@property(strong,nonatomic) PersonViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad

{
    [super viewDidLoad];
    
    self.viewModel = [self setupDummydata];
    
    NSLog(@"text =%@",self.viewModel.nameText);
    NSLog(@"Second text =%@",self.viewModel.birthdateText);
   
    // Do any additional setup after loading the view, typically from a nib.
}


-(PersonViewModel *)setupDummydata
{
    NSString *salutation = @"Dr.";
    NSString *firstName = @"first";
    NSString *lastName = @"last";
    NSDate *birthdate = [NSDate dateWithTimeIntervalSince1970:0];
    
    Person *person = [[Person alloc]initwithSalutation:salutation firstName:firstName lastName:lastName birthdate:birthdate];
   return [[PersonViewModel alloc] initWithPerson:person];
    
}


// =========== ******************************************** ===================
//            | The Below Code is the                     |
//            |  MVC PATTERN                              |
// =========== ******************************************** ===================

#pragma mark OLD MVC PATTERN 

- (void)MvcPatternExample

{
    Person *model = [self setupDummydataforMVC];
    if (model.salutation.length > 0) {
        NSLog(@"text =%@",[NSString stringWithFormat:@"%@ %@ %@", model.salutation, model.firstName, model.lastName]);
    } else {
        NSLog(@"second  text =%@",[NSString stringWithFormat:@"%@ %@", model.firstName, model.lastName]);
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    NSLog(@"birthdateLabel =%@",[dateFormatter stringFromDate:model.birthdate]);
    // Do any additional setup after loading the view, typically from a nib.
}


-(Person *)setupDummydataforMVC
{
    NSString *salutation = @"Dr.";
    NSString *firstName = @"first";
    NSString *lastName = @"last";
    NSDate *birthdate = [NSDate dateWithTimeIntervalSince1970:0];
    
    return  [[Person alloc]initwithSalutation:salutation firstName:firstName lastName:lastName birthdate:birthdate];
    
}


#pragma mark Received Memory Warning

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
