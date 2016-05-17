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

NSString *movie,*result;
UIView *view;
NSMutableArray *movie_array,*result_array;
NSString *fileContents;

char text;
UIImage *img;
float movielen;
int randomMovieNo;
static int misscount=0,letterhit=0;
static int Gameover=0;
NSMutableArray *temparray;

@synthesize head,winnerlbl,righthand,lefthand,rightleg,leftleg,back,ButtonArray;
@synthesize winView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"MovieNight.jpg"]]];
    
    [self readFile];
    
    
    //movie=[NSString stringWithFormat:@"CAR"];
    //NSMutableString *length=[NSString stringWithFormat:@"%.2d", movie.length];
   
    [self reset];
    
 

     
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)reset
{
    [self getMovieName];
    
    winView.hidden=YES;
    
    winnerlbl.hidden=YES;
    head.hidden=YES;
    lefthand.hidden=YES;
    righthand.hidden=YES;
    back.hidden=YES;
    leftleg.hidden=YES;
    rightleg.hidden=YES;
    
    
    movielen = movie.length;
    movie_array=[[NSMutableArray alloc]init];
    result_array=[[NSMutableArray alloc] init];
    
    
    temparray = [NSMutableArray array];
    for (int i = 0; i < movielen; i++) {
        [temparray addObject:[NSString stringWithFormat:@"%C", [movie characterAtIndex:i]]];
    }
    
    for (int i = 0; i < movielen; i++) {
        [result_array addObject:@" "];
    }
    
    //int index=0;
    int x=100; int y=10;
    for(int i=0;i<movielen; i++)
    {
        
        view=[[UIView alloc] initWithFrame:CGRectMake(x, y, 30, 30)];
        [movie_array addObject:view];
        [movie_array[i] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"rings.png"]] ];
        [self.view addSubview:movie_array[i]];
        
        
        
        x=x+30;
        
        if(((int)i%10)==0)
        {
            if(i>0)
            {
                y=y+30;
                x=100;
            }
        }
    }
}

-(void)getMovieName{
    
    NSArray* rows = [fileContents componentsSeparatedByString:@"\n"];
    int numofrows = rows.count-1;
    randomMovieNo =  arc4random_uniform(numofrows);
    
    if((randomMovieNo>=0) && (randomMovieNo <=numofrows))
    {
        movie=[rows objectAtIndex:randomMovieNo];
    }else
    {
        movie=@"INCEPTION";
    }
    movie=[movie uppercaseString];
    NSString *temp = movie;
    movie = [temp stringByReplacingOccurrencesOfString:@" " withString:@""];
}

-(void)readFile
{
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    NSString *filePath = [mainBundle pathForResource:@"data" ofType:@"txt"];
    NSStringEncoding encoding;
    NSError *error;
    fileContents = [[NSString alloc] initWithContentsOfFile:filePath
                                                         usedEncoding:&encoding
                                                                error:&error];
    
    //NSLog(@"filecontents:  %@",fileContents);
    
   
   
    
    
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    
    return (int)from + arc4random() % (to-from+1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}
- (IBAction)ButtonAction:(id)sender {
    NSInteger tagval = [sender tag];
    if(Gameover==0)
    {
    switch(tagval)
    {
        case 0:
            text='A';
            //img=[UIImage imageNamed:@"a_gold-2.png"];
            img=[UIImage imageNamed:@"A_green.png"];
           
            break;
        case 1:
            text='B';
            img=[UIImage imageNamed:@"B-green.png"];
            break;
        case 2:
            text='C';
            img=[UIImage imageNamed:@"C-green.png"];
            break;
        case 3:
            text='D';
             img=[UIImage imageNamed:@"D-green.png"];
            break;
        case 4:
            text='E';
             img=[UIImage imageNamed:@"E-green.png"];
            break;
        case 5:
            text='F';
            img=[UIImage imageNamed:@"F-green.png"];
            break;
        case 6:
            text='G';
            img=[UIImage imageNamed:@"G-green.png"];
            break;
        case 7:
            text='H';
            img=[UIImage imageNamed:@"H-green.png"];
            break;
        case 8:
            text='I';
            img=[UIImage imageNamed:@"I-green.png"];
            break;
        case 9:
            text='J';
             img=[UIImage imageNamed:@"J-green.png"];
            break;
        case 10:
            text='K';
             img=[UIImage imageNamed:@"K-green.png"];
            break;
        case 11:
            text='L';
             img=[UIImage imageNamed:@"L-green.png"];
            break;
        case 12:
            text='M';
           img=[UIImage imageNamed:@"M-green.png"];
            break;
        case 13:
            text='N';
             img=[UIImage imageNamed:@"N-green.png"];
            break;
        case 14:
            text='O';
            img=[UIImage imageNamed:@"O-green.png"];
            break;
        case 15:
            text='P';
             img=[UIImage imageNamed:@"P-green.png"];
            break;
        case 16:
            text='Q';
             img=[UIImage imageNamed:@"Q-green.png"];
            break;
        case 17:
            text='R';
            img=[UIImage imageNamed:@"R-green.png"];
            break;
        case 18:
            text='S';
             img=[UIImage imageNamed:@"S-green.png"];
            break;
        case 19:
            text='T';
            img=[UIImage imageNamed:@"T-green.png"];
            break;
        case 20:
            text='U';
             img=[UIImage imageNamed:@"U-green.png"];
            break;
        case 21:
            text='V';
           img=[UIImage imageNamed:@"V-green.png"];
            break;
        case 22:
            text='W';
            img=[UIImage imageNamed:@"W-green.png"];
            break;
        case 23:
            text='X';
             img=[UIImage imageNamed:@"X-green.png"];
            break;
        case 24:
            text='Y';
             img=[UIImage imageNamed:@"Y-green.png"];
            break;
        case 25:
            text='Z';
             img=[UIImage imageNamed:@"Z-green.png"];
   
            break;

        
        default:
            break;
    }
    [self checkHit];
    }//gameover condition ends
    
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
            //[result_array replaceObjectAtIndex:i withObject:movie_array];
            
            [result_array setObject:[temparray objectAtIndex:i] atIndexedSubscript:i];
            
            //NSString *temp=[movie characterAtIndex:i];
            //[result_array[i] = text];
           // phone = [self removeNonNumbers:phone];
            //[phoneNumbers replaceObjectAtIndex:i withObject:phone];
            // [self.view addSubview:movie_array[i]];
            
            //[array setObject:value atIndexedSubscript:i];
            NSLog(@"letter found");
            hit =1;
            letterhit=1;
            
        }
       
    }//for loop ends
    
    if(hit ==0)
    {
         misscount++;
        //draw hangman
        switch(misscount)
        {
            case 1:
                head.hidden=NO;
                break;
            case 2:
                 back.hidden=NO;
                break;
                
            case 3:
                lefthand.hidden=NO;
                break;
                
            case 4:
                 righthand.hidden=NO;
                break;
                
            case 5:
                leftleg.hidden=NO;
                break;
                
            case 6:
                rightleg.hidden=NO;
                break;
            default:
                break;
        }
    }
    
    [self checkResult];
}

-(void)checkResult{
    NSString *tempval=@"", *result=@"";
   if(letterhit==1)
   {
        for(int i=0;i<movielen;i++)
        {
            tempval=[result_array objectAtIndex:i];
            result = [result stringByAppendingString:tempval];
        }
   }
    
    if(misscount<6)
    {
      
        
        if([result isEqualToString:movie])
        {
            //[winnerlbl setText:@"Congrats !!" ];
            winnerlbl.hidden=NO;
            winView.image=[UIImage imageNamed:@"win_icon.png"];
            winView.hidden=NO;
             Gameover=1;
        }
    }else{
        
        if(misscount>=6)
        {
            //you lost
            [winnerlbl setText:@"Game Over" ];
            winnerlbl.hidden=NO;
            winView.image=[UIImage imageNamed:@"plose.png"];
            winView.hidden=NO;
            [self showResult];
           
           // NSNumber *no = [NSNumber numberWithBool:NO];
           // [elementCollection setValue:no forKey:@"enabled"];
            
            //[ButtonArray setValue:@"YES" forKey:@"enabled"];
            Gameover=1;
            
        }
    }

}

-(void)showResult{
    for(int i=0;i<movielen;i++)
    {
        [self takeLetter:[movie characterAtIndex:i] join:i];
    }
    
}


-(void)takeLetter:(char)letter join:(int)i{
    switch(letter)
    {
        case 'A':
           
          
            img=[UIImage imageNamed:@"A_green.png"];
            
            break;
        case 'B':
           
            img=[UIImage imageNamed:@"B-green.png"];
            break;
        case 'C':
            
            img=[UIImage imageNamed:@"C-green.png"];
            break;
        case 'D':
            
            img=[UIImage imageNamed:@"D-green.png"];
            break;
        case 'E':
            img=[UIImage imageNamed:@"E-green.png"];
            break;
        case 'F':
            img=[UIImage imageNamed:@"F-green.png"];
            break;
            
        case 'G':
            img=[UIImage imageNamed:@"G-green.png"];
            break;
            
        case 'H':
            img=[UIImage imageNamed:@"H-green.png"];
            break;
            
        case 'I':
            img=[UIImage imageNamed:@"I-green.png"];
            break;
            
        case 'J':
            img=[UIImage imageNamed:@"J-green.png"];
            break;
            
        case 'K':
            img=[UIImage imageNamed:@"K-green.png"];
            break;
            
        case 'L':
            img=[UIImage imageNamed:@"L-green.png"];
            break;
            
        case 'M':
            img=[UIImage imageNamed:@"M-green.png"];
            break;
            
        case 'N':
            img=[UIImage imageNamed:@"N-green.png"];
            break;
            
        case 'O':
            img=[UIImage imageNamed:@"O-green.png"];
            break;
            
        case 'P':
            img=[UIImage imageNamed:@"P-green.png"];
            break;
            
            
        case 'Q':
            img=[UIImage imageNamed:@"Q-green.png"];
            break;
            
        case 'R':
            img=[UIImage imageNamed:@"R-green.png"];
            break;
            
        case 'S':
            img=[UIImage imageNamed:@"S-green.png"];
            break;
            
        case 'T':
            img=[UIImage imageNamed:@"T-green.png"];
            break;
        
            
        case 'U':
            img=[UIImage imageNamed:@"U-green.png"];
            break;
            
        case 'V':
            img=[UIImage imageNamed:@"V-green.png"];
            break;
            
            
        case 'W':
            img=[UIImage imageNamed:@"W-green.png"];
            break;
            
        case 'X':
            img=[UIImage imageNamed:@"X-green.png"];
            break;
            
        case 'Y':
            img=[UIImage imageNamed:@"Y-green.png"];
            break;
            
        case 'Z':
            img=[UIImage imageNamed:@"Z-green.png"];
            break;
            
            
        default:
            break;
    }
     [movie_array[i] setBackgroundColor:[UIColor colorWithPatternImage:img] ];

}
- (IBAction)Newgame:(id)sender {
    
    
    misscount=0;
    Gameover=0;
    letterhit=0;
    winView.hidden=YES;
    
       // [movie_array removeAllObjects];
   
    
    for(UIView *tempview in movie_array)
    {
       
        [tempview removeFromSuperview];
    }
    
    
    [movie_array removeAllObjects];
    [self reset];
   
}

@end
