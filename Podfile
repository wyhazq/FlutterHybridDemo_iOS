source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

def addFlutterProject
  
  isFlutterEnable = false
  flutterProjectName = 'flutter_module_demo'
  flutter_application_path = 'FlutterProject/' + flutterProjectName + '/'
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
    pod flutterProjectName,             :path => 'FlutterProduct/' + flutterProjectName
    pod 'FlutterPluginRegistrant',      :path => 'FlutterProduct/FlutterPluginRegistrant'
    pod flutterProjectName + '_plugins',  :path => 'FlutterProduct/' + flutterProjectName + '_plugins'

  end
  
end

target 'FlutterHybridDemo_iOS' do
  
  addFlutterProject()
  
end

#post_install do |installer|
#
#end




