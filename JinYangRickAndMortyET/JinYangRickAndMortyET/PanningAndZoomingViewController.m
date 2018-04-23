//
//  PanningAndZoomingViewController.m
//  JinYangRickAndMortyET
//
//  Created by Sam Meech-Ward on 2018-04-23.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import "PanningAndZoomingViewController.h"

@interface PanningAndZoomingViewController () <UIScrollViewDelegate>
  
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
  
  @property (nonatomic, strong) UIImageView *etImageView;
  
@end

@implementation PanningAndZoomingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//  self.scrollView.delegate = self;
  
  UIImage *et = [UIImage imageNamed:@"et"];
  self.etImageView = [[UIImageView alloc] initWithImage:et];
  
  [self.scrollView addSubview:self.etImageView];
  
  self.scrollView.contentSize = et.size;
  
  self.scrollView.minimumZoomScale = 0.25;
  self.scrollView.maximumZoomScale = 2.4;
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
  return self.etImageView;
}


@end
