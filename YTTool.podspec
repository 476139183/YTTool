Pod::Spec.new do |s|

  s.name         = "YTTool"
  s.version      = "0.0.1"
  s.summary      = "YTTool 工具"

  s.homepage     = "https://476139183.github.io" 
  s.license      = { type: 'MIT', file: 'LICENSE' }

  s.author       = { "duanyutian" => "476139183@qq.com" }

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/476139183/YTTool", :tag => s.version } 
  s.source_files  = "YTTool/YTTool/*.{h,m}"
  s.requires_arc = true

end