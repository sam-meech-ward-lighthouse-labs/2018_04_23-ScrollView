//
//  PagingViewController.m
//  JinYangRickAndMortyET
//
//  Created by Sam Meech-Ward on 2018-04-23.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import "PagingViewController.h"

@interface PagingViewController ()
  
@property (nonatomic, readonly) NSArray <UIImage *> *images;
  
  @property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation PagingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.scrollView = [[UIScrollView alloc] init];
  [self.view addSubview:self.scrollView];
  
  [self.scrollView setTranslatesAutoresizingMaskIntoConstraints:NO];
   
   [self.view.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
  [self.view.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
  [self.view.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
  [self.view.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;

  [self setUpWithAutoLayout];
}
  
- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
//  [self setupwithoutAutoLayout];
  
}
  
- (void)setUpWithAutoLayout {
  
  UIStackView *stackView = [[UIStackView alloc] init];
  [self.scrollView addSubview:stackView];
  
  [stackView setTranslatesAutoresizingMaskIntoConstraints:NO];
  
  [stackView.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
  [stackView.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
  [stackView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
  [stackView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
  
  [stackView.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor multiplier:self.images.count].active = YES;
  [stackView.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor multiplier:1.0].active = YES;
  
  stackView.axis = UILayoutConstraintAxisHorizontal;
  stackView.distribution = UIStackViewDistributionFillEqually;
  //  stackView.content
  
  for (UIImage *image in self.images) {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [stackView addArrangedSubview:imageView];
    [imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    imageView.contentMode = UIViewContentModeScaleAspectFit;
  }
  
  self.scrollView.pagingEnabled = YES;
}
  
- (void)setUpWithAutoLayoutBad {
  
  UIStackView *stackView = [[UIStackView alloc] init];
  [self.scrollView addSubview:stackView];
  
  [stackView setTranslatesAutoresizingMaskIntoConstraints:NO];
  
  [stackView.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
  [stackView.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
  [stackView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
  [stackView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
  
  stackView.axis = UILayoutConstraintAxisHorizontal;
//  stackView.content

  for (UIImage *image in self.images) {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [stackView addArrangedSubview:imageView];
    [imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [imageView.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor multiplier:1.0].active = YES;
    [imageView.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor multiplier:1.0].active = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
  }

  self.scrollView.pagingEnabled = YES;
}

  
- (void)setupwithoutAutoLayout {
  CGFloat width = CGRectGetWidth(self.scrollView.frame);
  CGFloat height = CGRectGetHeight(self.scrollView.frame);
  CGFloat offset = 0;
  
  for (UIImage *image in self.images) {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.scrollView addSubview:imageView];
    imageView.frame = CGRectMake(offset, 0, width, height);
    offset += width;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
  }
  
  self.scrollView.contentSize = CGSizeMake(offset, height);
  self.scrollView.pagingEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray <UIImage *> *)images {
  return @[
           [UIImage imageNamed:@"et"],
           [UIImage imageNamed:@"download"],
           [UIImage imageNamed:@"rick-morty"],
           [UIImage imageNamed:@"jin-yang-2"],
           [UIImage imageNamed:@"et"],
           [UIImage imageNamed:@"download"],
           [UIImage imageNamed:@"rick-morty"],
           [UIImage imageNamed:@"jin-yang-2"],
           [UIImage imageNamed:@"et"],
           [UIImage imageNamed:@"download"],
           [UIImage imageNamed:@"rick-morty"],
           [UIImage imageNamed:@"jin-yang-2"],
           [UIImage imageNamed:@"et"],
           [UIImage imageNamed:@"download"],
           [UIImage imageNamed:@"rick-morty"],
           [UIImage imageNamed:@"jin-yang-2"],
           ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
