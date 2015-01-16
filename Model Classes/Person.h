//
//  Person.h
//  MVVMTutorial
//
//  Created by Siba Prasad Hota  on 1/8/15.
//  Copyright (c) 2015 Wemakeappz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString  *salutation;
@property (nonatomic, strong) NSString  *firstName;
@property (nonatomic, strong) NSString  *lastName;
@property (nonatomic, strong) NSDate    *birthdate;

@end
