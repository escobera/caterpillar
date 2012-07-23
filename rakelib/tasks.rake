namespace :caterpillar do

  desc "Prints the caterpillar gem version"
  task :version do
    $stdout.puts Caterpillar::VERSION
  end

end