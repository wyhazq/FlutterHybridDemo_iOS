source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

def addFlutterProject
  
  isFlutterEnable = false
  flutter_application_path = 'FlutterProject/flutter_module_demo/'
  flutterConfigPath = 'project.properties'
  if File::file?(flutter_application_path + flutterConfigPath)
    IO.foreach(flutter_application_path + flutterConfigPath) { | line |
      if line == "FlutterEnable=true\n"
        isFlutterEnable = true
        break
      end
    }
  end
  
  if isFlutterEnable
    puts 'Flutter mode'
    
    eval(File.read(File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')), binding)
    
  else
    puts 'Native mode'
    
    pod 'Flutter',                      :path => 'FlutterProduct/Flutter'
    pod 'flutter_module_demo',          :path => 'FlutterProduct/flutter_module_demo'
    pod 'FlutterPluginRegistrant',      :path => 'FlutterProduct/FlutterPluginRegistrant'
    pod 'flutter_module_demo_plugins',  :path => 'FlutterProduct/flutter_module_demo_plugins'

  end
  
end

target 'FlutterHybridDemo_iOS' do
  
  addFlutterProject()
  
end

#post_install do |installer|
#
#end




