//
//  ViewController.m
//  chess
//
//  Created by 嶋田　仁 on 13/12/12.
//  Copyright (c) 2013年 University of kitakyusyu. All rights reserved.
//

#import "ViewController.h"

#define B 10

@interface ViewController ()

@end

@implementation ViewController

int board[B][B];
int i, j;
int n=0, m=0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)buttonNumber:(id)sender {
    UIButton *b = (UIButton *)sender;
    _result.titleLabel.text = [NSString stringWithFormat:@"%d",board[0][0]];
//    for (b.tag = 1; b.tag < 64; b.tag++) {
//        n = b.tag/8+1;
//        m = b.tag%8;
//            board[i][j] = board[n][m];
//        UILabel *label=[[UILabel alloc] initWithFormat:@"%d", board[i][j]];
//        b.titleLabel.text = print;
//        NSLog(@"%d",board[i][j]);
//
//    }
}

void init_board(int board[B][B]){
    for (i = 0; i < B; i++) {
        for (j = 0; j < B; j++) {
            board[i][j] = -1;
        }
    }
    for (i = 1; i <= 8; i++) {
        for (j = 1; j <= 8; j++) {
            board[i][j] = 0;
            board[i][7] = 1;
        }
    }
    
    board[8][1] = board[8][8] = 2;
    board[8][2] = board[8][7] = 3;
    board[8][3] = board[8][6] = 4;
    board[8][4] = 5;
    board[8][5] = 6;
    
}

//-(void)setTitle:(NSSTring *)title forState:(UIControlState)state{
//    UIButton *btn = [UIButton buttonWithType:ボタンタイプ名];
//    btn.frame = CGRectMake(0, 0, 50, 30);    for (i = 1; i < 9; i++) {
//        for(j = 1; j < 9; j++) {
//            [btn setTitle:@"%d"forState:UIControlStateNormal ,board[i][j]];
//        //NSString *print=[[NSString alloc] initWithFormat:@"%d", board[i][j]];
//            //self.result = print;
//        }
//    }
//}


@end
