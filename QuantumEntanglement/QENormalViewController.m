//
//  QENormalViewController.m
//  QuantumEntanglement
//
//  Created by Daniel Blakemore on 9/23/14.
//  Copyright (c) 2014 Pixio. All rights reserved.
//

#import "QENormalViewController.h"

#import "QENormalView.h"

@implementation QENormalViewController

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
    [self setView:[[QENormalView alloc] init]];
}

- (QENormalView*)contentView
{
    return (id)[self view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"Normal View"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[[self contentView] normalField] becomeFirstResponder];
}

@end
