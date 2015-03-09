# desc "Explaining what the task does"
# task :mohamed_test do
#   # Task goes here
# end


namespace :mohamed_test do
  desc "Install mohamed test module"
  task :install do
    system "rsync --exclude=.svn -ruv vendor/plugins/mohamed_test/public ."
  end
end