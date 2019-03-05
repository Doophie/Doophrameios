Pod::Spec.new do |spec|


  spec.name         = "Doophrame"
  spec.version      = "0.0.1"
  spec.summary      = "A framework by Quinn."
  spec.description  = "Its for making shit happen, Im just learning shit."

  spec.homepage     = "http://doophie.ca/Doophrame"

  spec.license      = "Apache-2.0"
  
  spec.author             = { "qfagan" => "quinn@doophie.ca" }

  spec.platform     = :ios, "12.0"

  spec.source       = { :git => "http://github.com/Doophie/Doophrameios.git", :branch => "master", :tag => "#{spec.version}" }
  spec.source_files  = "Doophrame/Doophrame/**/*.{h,swift}"

end
