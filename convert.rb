hamls = Dir["app/views/**/*.haml"] - ['app/views/layouts/*.haml'];
hamls.each do |haml| 
  puts haml
  erb = haml.sub(/\.haml$/, '.erb')
  system("herbalizer #{haml} > #{erb}")
end
