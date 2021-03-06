dep "personal dotfiles" do
  requires "stripysock:dotfiles"
  requires "stripysock:repository".with :path => "~/.dotfiles-personal",
                                    :url => "https://github.com/adamcoop/dotfiles.git",
                                    :branch => "master"

  met? {
    "~/.dotfiles-personal".p.exists?
  }

  after {
    shell "rcup -f"
  }
end
