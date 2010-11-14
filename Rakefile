
begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'test:run'

Bones {
  name  'pallet-ops'
  authors  'Hugo Duncan'
  email    'pallet@cloudhoist.org'
  url      'http://github.com/hugoduncan/pallet-jruby'
}

