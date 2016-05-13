//
//  ViewController.m
//  MovieBreak
//
//  Created by Triveni Banpela on 5/11/16.
//  Copyright © 2016 Triveni Banpela. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *movie;
UIView *view;
NSMutableArray *movie_array;
char text;
UIImage *img;
float movielen;

@synthesize imageView,head;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"MovieNight.jpg"]]];
   
    movie=[NSString stringWithFormat:@"CAR"];
    //NSMutableString *length=[NSString stringWithFormat:@"%.2d", movie.length];
    movielen = movie.length;
    movie_array=[[NSMutableArray alloc]init];
    //int index=0;
    int x=100;
    for(int i=0;i<movielen; i++)
    {
        view=[[UIView alloc] initWithFrame:CGRectMake(x, 10, 30, 30)];
        [movie_array addObject:view];
        [movie_array[i] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"rings.png"]] ];
        [self.view addSubview:movie_array[i]];
        
        x=x+30;
    }
    
    
    /* 
     
     self.brick_array = [[NSMutableArray alloc] init];
     int x=20, y=40;
     int index = 0;
     
     
     for(int i=0;i<10;i++)
     {
     for(int j=0; j<5;j++)
     {
     brick = [[UIView alloc] initWithFrame:CGRectMake(x, y,60,15)];
     [self.brick_array addObject:brick];
     [self addSubview:brick_array[index]];
     // [brick_array[index] setBackgroundColor:[[UIColor alloc] initWithRed:arc4random()%256/256.0 green:arc4random()%256/256.0 blue:arc4random()%256/256.0 alpha:1.0]];
     [brick_array[index] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"brick.png"]] ];
     x=x+60;
     index++;
     }
     x=20;y=y+20;
     
     }

     
     */
    // Do any additional setup after loading the view, typically from a nib.
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}
- (IBAction)ButtonAction:(id)sender {
    NSInteger tagval = [sender tag];
    
    switch(tagval)
    {
        case 0:
            text='A';
            img=[UIImage imageNamed:@"a_gold-2.png"];
           
            break;
        case 1:
            text='B';
            img=[UIImage imageNamed:@"b_gold-2.png"];
            break;
        case 2:
            text='C';
            img=[UIImage imageNamed:@"c_gold-2.png"];
            break;
        case 3:
            text='D';
            img=[UIImage imageNamed:@"d_gold-2.png"];
            break;
        case 4:
            text='E';
            img=[UIImage imageNamed:@"e_gold-2.png"];
            break;
        case 5:
            text='F';
            img=[UIImage imageNamed:@"f_gold-2.png"];
            break;
        case 6:
            text='G';
            img=[UIImage imageNamed:@"g_gold-2.png"];
            break;
        case 7:
            text='H';
            img=[UIImage imageNamed:@"h_gold-2.png"];
            break;
        case 8:
            text='I';
            img=[UIImage imageNamed:@"i_gold-2.png"];
            break;
        case 9:
            text='J';
            img=[UIImage imageNamed:@"j_gold-2.png"];
            break;
        case 10:
            text='K';
            img=[UIImage imageNamed:@"k_gold-2.png"];
            break;
        case 11:
            text='L';
            img=[UIImage imageNamed:@"l_gold-2.png"];
            break;
        case 12:
            text='M';
            img=[UIImage imageNamed:@"m_gold-2.png"];
            break;
        case 13:
            text='N';
            img=[UIImage imageNamed:@"n_gold-2.png"];
            break;
        case 14:
            text='O';
            img=[UIImage imageNamed:@"o_gold-2.png"];
            break;
        case 15:
            text='P';
            img=[UIImage imageNamed:@"p_gold-2.png"];
            break;
        case 16:
            text='Q';
            img=[UIImage imageNamed:@"q_gold-2.png"];
            break;
        case 17:
            text='R';
            img=[UIImage imageNamed:@"r_gold-2.png"];
            break;
        case 18:
            text='S';
            img=[UIImage imageNamed:@"s_gold-2.png"];
            break;
        case 19:
            text='T';
            img=[UIImage imageNamed:@"t_gold-2.png"];
            break;
        case 20:
            text='U';
            img=[UIImage imageNamed:@"u_gold-2.png"];
            break;
        case 21:
            text='V';
            img=[UIImage imageNamed:@"v_gold-2.png"];
            break;
        case 22:
            text='W';
            img=[UIImage imageNamed:@"w_gold-2.png"];
            break;
        case 23:
            text='X';
            img=[UIImage imageNamed:@"x_gold-2.png"];
            break;
        case 24:
            text='Y';
            img=[UIImage imageNamed:@"y_gold-2.png"];
            break;
        case 25:
            text='Z';
            img=[UIImage imageNamed:@"z_gold-2.png"];
   
            break;

        
        default:
            break;
    }
    [self checkHit];
    
    
}


-(void)checkHit{
    int hit =0;
    for(int i=0;i<movielen;i++)
    {
         // NSLog(@"text %@",text);
        //NSLog(@"text %@",[movie characterAtIndex:i]);
        // ([@"test" characterAtIndex:1] == 'e')
        if([movie characterAtIndex:i]==text)
        {
            [movie_array[i] setBackgroundColor:[UIColor colorWithPatternImage:img] ];
             // [self.view addSubview:movie_array[i]];
            //NSLog(@"letter found");
            hit =1;
            break;
        }
    }
    
    if(hit ==0)
    {
        //draw hangman
        head.hidden=NO;
    }
}



@end
