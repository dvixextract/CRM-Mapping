//
//  ViewController.h
//  MAP_CRM
//
//  Created by User on 2018/02/08.
//  Copyright © 2018 Tribal Nexus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *queryTypeCvFromService;
@property (nonatomic, strong) NSMutableArray *queryTypeCkFromService;
@property (nonatomic, strong) NSMutableArray *categoryCvFromService;
@property (nonatomic, strong) NSMutableArray *categoryCkFromService;
@property (nonatomic, strong) NSMutableArray *subcategoryCvFromService;
@property (nonatomic, strong) NSMutableArray *subcategoryCkFromService;
@property (nonatomic, strong) NSMutableArray *outcomeCvFromService;
@property (nonatomic, strong) NSMutableArray *outcomeCkFromService;

@property (nonatomic, strong) NSMutableArray *categoryForComparison;
@property (nonatomic, strong) NSMutableArray *categoryCkForComparison;
@property (nonatomic, strong) NSMutableArray *subcategoryForComparison;
@property (nonatomic, strong) NSMutableArray *subcategoryCkForComparison;
@property (nonatomic, strong) NSMutableArray *outcomeForComparison;
@property (nonatomic, strong) NSMutableArray *outcomeCkForComparison;
@property (nonatomic, strong) NSMutableArray *statusForComparison;
@property (nonatomic, strong) NSMutableArray *statusCkForComparison;
@property (nonatomic, strong) NSMutableArray *listData;

@property (nonatomic, strong) NSMutableArray *appliedOffersArray;
@end

