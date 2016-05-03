Pod::Spec.new do |s|

  s.name         = "HDUIKit"
  s.version      = "0.0.2"
  s.summary      = "方便设置控件大小位置"

  s.description  = <<-DESC
                   方便设置控件大小位置，我的第一个依赖库制作
                   DESC

  s.homepage     = "https://github.com/wei0617/HDUIKit.git" 
  s.license      = "MIT"
  s.author             = { "weihongchang" => "weihongchang@139.com" }

  s.platform     = :ios
  s.source       = { :git => "https://github.com/wei0617/HDUIKit.git", :tag => "0.0.2" }


  s.source_files  = "HDUIKit/HDFrame/UIView+HDFrame*.{h,m}", "HDUIKit/HDAutoLayout/UIView+HDAutoLayout*.{h,m}", "HDUIKit/HDUIKit/HDUIKit.h"
  s.framework  = "UIKit"
  s.requires_arc = true

end
