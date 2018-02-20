//
//  SubCategories.m
//  MAP_CRM
//
//  Created by User on 2018/02/19.
//  Copyright © 2018 Tribal Nexus. All rights reserved.
//

#import "SubCategories.h"
#import "Outcome.h"

@implementation SubCategories

- (id) initWithInfo:(NSDictionary *)withInfo {
    self = [super init];
    if(!self)
        return nil;
    
    self.key = [withInfo valueForKey:@"Key"];
    self.name = [withInfo valueForKey:@"Name"];
    self.outcome = [[NSMutableArray alloc] init];
    NSArray *arry = (NSArray *)[withInfo valueForKey:@"Outcome"];
    int j;
    
    for (j = 0; j < arry.count; j++) {
        Outcome *obj = [[Outcome alloc] initWithInfo:arry[j]];
        [self.outcome addObject:obj];
    }
    return self;
}

@end
