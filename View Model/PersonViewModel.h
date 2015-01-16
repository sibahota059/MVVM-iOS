//
//  PersonViewModel.h
//  MVVMTutorial
//
//  Created by Siba Prasad Hota  on 1/8/15.
//  Copyright (c) 2015 Wemakeappz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


@interface PersonViewModel : NSObject

- (instancetype)initWithPerson:(Person *)person;

@property (nonatomic, readonly) Person * person;
@property (nonatomic, readonly) NSString *nameText;
@property (nonatomic, readonly) NSString *birthdateText;

@end
