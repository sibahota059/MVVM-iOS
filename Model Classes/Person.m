//
//  Person.m
//  MVVMTutorial
//
//  Created by Siba Prasad Hota  on 1/8/15.
//  Copyright (c) 2015 Wemakeappz. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initwithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSDate *)birthdate
{
    _salutation=salutation; _firstName=firstName;  _lastName=lastName;  _birthdate = birthdate;
    return self;
}

@end
