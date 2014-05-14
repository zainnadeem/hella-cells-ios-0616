//
//  FISViewSpec.m
//  HellaCells
//
//  Created by Chris Gonzales on 5/13/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"
#import "FISHellaDetailViewController.h"
#import "FISHellaMasterTableViewController.h"



SpecBegin(FISView)

describe(@"integration tests", ^{
    
    beforeAll(^{

    });
    
    beforeEach(^{

    });
    
    it(@"should have 100 cells, each with the correct number", ^{
        UITableView *tableView = (UITableView *)[tester waitForViewWithAccessibilityLabel:@"Table"];
        for(int x = 0; x < [tableView numberOfRowsInSection:0]; x++)
        {
            NSIndexPath *ip = [NSIndexPath indexPathForRow:x inSection:0];
            UITableViewCell *cell = [tester waitForCellAtIndexPath:ip inTableViewWithAccessibilityIdentifier:@"Table"];
            NSString *correctString = [NSString stringWithFormat:@"%d",x+1];
            expect(cell.textLabel.text).to.equal(correctString);
//            expect(cell.textLabel.text).to.equal([NSString stringWithFormat:@"%i", x+1]);
        }
    });  
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
