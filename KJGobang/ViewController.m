//
//  ViewController.m
//  KJGobang
//
//  Created by TigerHu on 2024/8/21.
//

#import "ViewController.h"
#import "KJGobangView.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *maskView;
@property (nonatomic, strong) UIButton *startButton;
//@property (nonatomic, strong) UIButton *stopButton;
@property (nonatomic, strong) UIButton *resetButton;
@property (nonatomic, strong) KJGobangView *gobangView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gobangView = [[KJGobangView alloc] initWithFrame:CGRectMake(0, 130, self.view.frame.size.width, self.view.frame.size.width)];
    [self.view addSubview:self.gobangView];
    
    UIButton *resetButton = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 100) / 2, self.gobangView.frame.size.height + self.gobangView.frame.origin.y + 10, 100, 40)];
    [resetButton setTitle:@"重新开始" forState:UIControlStateNormal];
    [resetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [resetButton addTarget:self action:@selector(resetButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:resetButton];
    
    self.maskView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:self.maskView];
    self.maskView.image = [UIImage imageNamed:@"launch"];
    self.maskView.contentMode = UIViewContentModeScaleAspectFill;
    self.maskView.userInteractionEnabled = YES;
    
    self.startButton = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-86)/2, self.view.frame.size.height/2+200, 86, 25)];
    [self.maskView addSubview:self.startButton];
    [self.startButton setBackgroundImage:[UIImage imageNamed:@"start"] forState:UIControlStateNormal];
    [self.startButton addTarget:self action:@selector(startButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    /*
    self.stopButton = [[UIButton alloc] initWithFrame:CGRectMake(166, 475, 86, 25)];
    [self.stopButton setBackgroundImage:[UIImage imageNamed:@"stop"] forState:UIControlStateNormal];
    [self.maskView addSubview:self.stopButton];
     */
}

- (void)resetButtonPressed:(UIButton *)button
{
    [self.gobangView reset];
}

- (void)startButtonPressed:(UIButton *)button
{
    [self.maskView removeFromSuperview];
}

@end
