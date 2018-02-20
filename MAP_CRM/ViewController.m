    //
    //  ViewController.m
    //  MAP_CRM
    //
    //  Created by User on 2018/02/08.
    //  Copyright © 2018 Tribal Nexus. All rights reserved.
    //

    #import "ViewController.h"

    @interface ViewController ()

    @end

    @implementation ViewController



    - (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareReceivedData];
//    [self filterArrayFromWebService];

    _listData = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    }


    - (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }


- (NSMutableArray *) createSubCategories :(NSMutableArray *) subcategoryArray{

    NSMutableArray *subcategoriesArrayB = [[NSMutableArray alloc]init];
    [subcategoriesArrayB addObject:subcategoryArray];
    NSLog(@"subcategoriesArrayB -> %@",subcategoriesArrayB);
    return subcategoriesArrayB;
}


-(NSMutableArray *) prepareReceivedData {

    NSError *error;
    NSString *country = @"Kenya";//[AppDelegate GetAppDelegate].strCountry ;
    NSString *connectionStringFirstPart = @"https://z9bwz8hj98.execute-api.eu-west-1.amazonaws.com/uat/cdm/";
    NSString *connectionStringLastPart = @"/datasets";
    NSString *urlString = [NSString stringWithFormat: @"%@%@%@", connectionStringFirstPart,country,connectionStringLastPart];
    NSLog(@" connectionString -> %@",urlString);

    NSData *data = [NSData dataWithContentsOfURL: [NSURL URLWithString:urlString]];
    NSMutableDictionary *receivedData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSMutableArray *categories = [[NSMutableArray alloc] initWithArray:[receivedData objectForKey:@"caseDetails"]];
     NSLog(@" categoriesArrayA -> %@",categories);

    NSMutableArray *categoriesArrayA = [[NSMutableArray alloc]init];
    NSMutableArray *outcomeArrayA = [[NSMutableArray alloc]init];
    NSMutableArray *subcategoriesArrayA = [[NSMutableArray alloc]init];

    NSMutableArray *categoriesArray = [[NSMutableArray alloc]init];
    NSMutableArray *outcomeArray = [[NSMutableArray alloc]init];
    NSMutableArray *subcategoriesArray = [[NSMutableArray alloc]init];




        for (int i =0; i < categories.count; i++)

        {


            NSArray* subCategories= [categories[i] objectForKey: @"subCategories"];

                for (int j = 0; j < subCategories.count; j++)

                {

                    NSArray* outcome =[subCategories[j] objectForKey:@"outcomes"];


                        for (int k = 0; k < outcome.count; k++)

                        {

                            NSArray* status =[outcome[k] objectForKey:@"statuses"];


                                for (int u = 0; u < status.count; u++)

                                {

                                    if ( [[status[u] objectForKey:@"ck"]  isEqual: @2] )
                                    {
//                                        [outcomeArray addObject:[outcome[k] objectForKey:@"cv"]];
//                                        [outcomeArray addObject:[outcome[k] objectForKey:@"ck"]];
//                                        [outcomeArrayA  addObject:outcomeArray];
                                        [outcomeArrayA addObject:outcome[k]];


                                        NSLog(@" object 1  start -> %@", outcomeArrayA);
//
//                                        NSLog(@" status -> %@", [status[u] objectForKey:@"cv"]);
//                                        NSLog(@" outcome -> %@", [outcome[k] objectForKey:@"cv"]);
//                                        NSLog(@" subcategory ->  %@",[subCategories[j] objectForKey:@"cv"]);
//                                        NSLog(@" category -> %@",[categories[i] objectForKey:@"cv"]);
//
//                                        NSLog(@" object 1  end ->");
                                }

                        }

                }
                    if([outcomeArrayA count] > 0){

                        //[subcategoriesDictionary removeAllObjects];

//                        [subcategoriesDictionary setObject:[subCategories[j] objectForKey:@"cv"] forKey:@"cv"];
//                        [subcategoriesDictionary setObject:[subCategories[j] objectForKey:@"ck"] forKey:@"ck"];
//                        [subcategoriesDictionary setObject:outcomeArrayA  forKey:@"outcomes"];
//                        [subcategoriesArrayA addObject:subcategoriesDictionary];
//                        [self createSubCategories:subcategoriesArrayA];


                        [subcategoriesArray addObject:[subCategories[j] objectForKey:@"cv"]];
                        [subcategoriesArray addObject:[subCategories[j] objectForKey:@"ck"]];
                        [subcategoriesArrayA  addObject:subcategoriesArray];
                        [subcategoriesArrayA addObject:outcomeArrayA];

                    }

        }
            if([subcategoriesArrayA count] > 0){

//                [categoriesDictionary setObject:[categories[i] objectForKey:@"cv"] forKey:@"cv"];
//                [categoriesDictionary setObject:[categories[i]objectForKey:@"ck"] forKey:@"ck"];
//                [categoriesDictionary setObject:subcategoriesDictionary  forKey:@"subCategories"];
//                [categoriesArrayA addObject:categoriesDictionary];

//                [categoriesArray addObject:[categories[i] objectForKey:@"cv"]];
//                [categoriesArray addObject:[categories[i] objectForKey:@"ck"]];

                [subcategoriesArrayA  addObject:subcategoriesArray];
                [categoriesArrayA addObject:subcategoriesArrayA];

            }

    }

    NSLog(@" categoriesArrayA -> %@",categoriesArrayA);

      return categoriesArrayA;
}


@end
