dep "mac" do
  requires "stripysock:workstation"
  requires "personal"
end

dep "personal" do
  requires "personal dotfiles"
  requires "prefs.mac"
  requires "packages"
  requires "vscode extensions"
end

dep "macbook" do
  requires "mac"
  requires "personal"
  requires "apps"
end
