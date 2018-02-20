//
//  DataInfo.m
//  MAP_CRM
//
//  Created by User on 2018/02/19.
//  Copyright © 2018 Tribal Nexus. All rights reserved.
//

#import "DataInfo.h"

@implementation DataInfo

- (id) init {
    self = [super init];
    if (self){
        _key = 0;
        _name = @"";
    }
    return self;
}

- (id) initWithInfo:(NSDictionary *)withInfo {
    self = [super init];
    if(!self)
        return nil;

    _key = [withInfo valueForKey:@"Key"];
    _name = [withInfo valueForKey:@"Name"];

    return self;
}

@end
