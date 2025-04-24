Pod::Spec.new do |spec|
  spec.name         = "NuggetExternalDependecy"
  spec.version      = "1.0.1"
  spec.summary      = "Internal dependency wrapper for modules used by NuggetSDK."
  spec.description  = <<-DESC
    A lightweight internal SDK that fetches external dependencies required by NuggetSDK.
  DESC
  spec.homepage     = "https://github.com/BudhirajaRajesh/NuggetExternalDependecy"
  spec.license      = { :type => 'Proprietary', :text => 'Copyright © 2025 Zomato. All rights reserved.' }
  spec.author       = { "Rajesh Budhiraja" => "rajesh.budhiraja@zomato.com" }
  spec.platform     = :ios, '12.0'
  spec.source       = { :git => "https://github.com/BudhirajaRajesh/NuggetExternalDependecy.git", :tag => "1.0.1" }
  spec.source_files = 'Sources/NuggetExternalDependency/**/*.swift'
  spec.exclude_files = "Classes/Exclude"
  spec.dependency   'JTAppleCalendar'
  spec.dependency 'lottie-ios'
  spec.dependency 'Nuke'
  spec.dependency 'NukeExtensions'
  spec.swift_versions = ['5.0']
end
