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
            img=[UIImage imageNamed:@"b_gold-2.png"];
           
            break;
        case 1:
            text='B';
            img=[UIImage imageNamed:@"b_gold-2.png"];
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
