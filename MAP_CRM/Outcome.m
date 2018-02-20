//
//  Outcome.m
//  MAP_CRM
//
//  Created by User on 2018/02/19.
//  Copyright © 2018 Tribal Nexus. All rights reserved.
//

#import "Outcome.h"
#import "DataInfo.h"

@implementation Outcome

- (id) initWithInfo:(NSDictionary *)withInfo {
    self = [super init];
    if(!self)
        return nil;

    self.key = [withInfo valueForKey:@"Key"];
    self.name = [withInfo valueForKey:@"Name"];
    self.state = [[NSMutableArray alloc] init];
    NSArray *arry = (NSArray *)[withInfo valueForKey:@"state"];
    int j;

    for (j = 0; j < arry.count; j++) {
        DataInfo *obj = [[DataInfo alloc] initWithInfo:arry[j]];
        [self.state addObject:obj];
    }
    return self;
}

@end
