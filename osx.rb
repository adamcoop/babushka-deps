dep "prefs.mac" do
  requires "prefs.auto-hide-dock"
  requires "prefs.safari.show-status-bar"
  requires "prefs.safari.empty-new-tabs-and-windows"
  requires "prefs.safari.develop-menu"
  requires "prefs.safari.developer-extras"
end

dep "prefs.small-screen" do
  requires "auto-hide-dock"
end

dep "prefs.auto-hide-dock", :template => "plist" do
  domain "com.apple.dock"
  values "autohide" => 1
  types "autohide" => "int"
end

dep "prefs.safari.empty-new-tabs-and-windows", :template => "plist" do
  domain "com.apple.safari"
  values "NewTabBehavior" => '1', "NewWindowBehavior" => '1'
end

dep "prefs.safari.develop-menu", :template => "plist" do
  domain "com.apple.safari"
  values "IncludeInternalDebugMenu" => '1', "IncludeDevelopMenu" => '1', "WebKitDeveloperExtrasEnabledPreferenceKey" => '1'
end

dep "prefs.safari.developer-extras", :template => "plist" do
  domain "NSGlobalDomain"
  values "WebKitDeveloperExtras" => '1'
end

dep "prefs.safari.show-status-bar", :template => "plist" do
  domain "com.apple.safari"
  values "ShowOverlayStatusBar" => 1
  types "ShowOverlayStatusBar" => "int"
end
