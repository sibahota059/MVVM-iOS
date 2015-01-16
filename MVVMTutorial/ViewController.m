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
    
    NSLog(@"text        =%@",self.viewModel.nameText);
    NSLog(@"Second text =%@",self.viewModel.birthdateText);
    
    // =========== ******************************************** ===================
    // IF ANY BINDING REQUIRED, YOU CAN DO THAT IN VIEW MODEL
    // =========== ******************************************** ===================
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(PersonViewModel *)setupDummydata
{
    Person *person = [[Person alloc]init];
    
    person.salutation   = @"Mr.";
    person.firstName    = @"Siba Prasad";
    person.lastName     = @"Hota";
    person.birthdate    = [NSDate dateWithTimeIntervalSince1970:0];
    
    return [[PersonViewModel alloc] initWithPerson:person];
}


// =========== ******************************************** ===================
//            |  The Below Code is the                    |
//            |  MVC PATTERN                              |
// =========== ******************************************** ===================

#pragma mark OLD MVC PATTERN 

- (void)MvcPatternExample

{
    Person *model = [self setupDummydataforMVC];
    if (model.salutation.length > 0) {
        NSLog(@"text            =%@",[NSString stringWithFormat:@"%@ %@ %@", model.salutation, model.firstName, model.lastName]);
    } else {
        NSLog(@"second  text    =%@",[NSString stringWithFormat:@"%@ %@", model.firstName, model.lastName]);
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    NSLog(@"birthdateLabel =%@",[dateFormatter stringFromDate:model.birthdate]);
    
    // =========== ******************************************** ===================
    // IF ANY BINDING REQUIRED, YOU HAVE TO DO IT HERE
    // =========== ******************************************** ===================
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(Person *)setupDummydataforMVC
{
    Person *person      = [[Person alloc]init];
    
    person.salutation   = @"Mr.";
    person.firstName    = @"Siba Prasad";
    person.lastName     = @"Hota";
    person.birthdate    = [NSDate dateWithTimeIntervalSince1970:0];
    
    return person;
    
}


#pragma mark Received Memory Warning

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
