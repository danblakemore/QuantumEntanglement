//
//  QECharmViewController.m
//  QuantumEntanglement
//
//  Created by Daniel Blakemore on 9/23/14.
//  Copyright (c) 2014 Pixio. All rights reserved.
//

#import "QECharmViewController.h"

#import "QECharmView.h"

@implementation QECharmViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self == nil)
        return nil;
    
    return self;
}

#pragma mark - view related methods

- (void)loadView
{
    [self setView:[[QECharmView alloc] init]];
}

- (QECharmView*)contentView
{
    return (id)[self view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"Charm View"];
    
    [[[self contentView] secureField] setText:@"thistextwillbefine"];
}

@end
