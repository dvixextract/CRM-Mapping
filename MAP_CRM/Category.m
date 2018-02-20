//
//  Category.m
//  MAP_CRM
//
//  Created by User on 2018/02/19.
//  Copyright © 2018 Tribal Nexus. All rights reserved.
//

#import "Category.h"
#import "SubCategories.h"

@implementation Category
- (id) initWithInfo:(NSDictionary *)withInfo {
    self = [super init];
    if(!self)
        return nil;

    self.key = [withInfo valueForKey:@"Key"];
    self.name = [withInfo valueForKey:@"Name"];
    self.subCategories = [[NSMutableArray alloc] init];
    NSArray *arry = (NSArray *)[withInfo valueForKey:@"subSubCategories"];
    int j;

    for (j = 0; j < arry.count; j++) {
        SubCategories *obj = [[SubCategories alloc] initWithInfo:arry[j]];
        [self.subCategories addObject:obj];
    }
    return self;
}
@end
