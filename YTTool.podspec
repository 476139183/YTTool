Pod::Spec.new do |s|

  s.name         = "YTTool"
  s.version      = "0.0.1"
  s.summary      = "YTTool 工具"
  s.description      = "test description"

  s.license      = { type: 'MIT', file: 'LICENSE' }
  s.homepage     = "https://476139183.github.io" 
  s.author       = { "duanyutian" => "476139183@qq.com" }

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/476139183/YTTool.git", :tag => s.version } 
  s.source_files  = "YTTool/YTTools/*.{h,m}"
  s.prefix_header_contents = '#import "YTToolHeader.h"'

  s.requires_arc = true

end