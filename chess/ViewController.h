//
//  ViewController.h
//  chess
//
//  Created by 嶋田　仁 on 13/12/12.
//  Copyright (c) 2013年 University of kitakyusyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *result;

@property(nonatomic, assign)int *init_board;

- (IBAction)buttonNumber:(id)sender;

@end
