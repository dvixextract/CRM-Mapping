//
//  DataInfo.h
//  MAP_CRM
//
//  Created by User on 2018/02/19.
//  Copyright © 2018 Tribal Nexus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataInfo : NSObject {

}

@property (nonatomic, strong) NSNumber *key;
@property (nonatomic, strong) NSString *name;

- (id) initWithInfo:(NSDictionary *) withInfo;
@end
