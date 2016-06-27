require 'rake'
require 'hanami/rake_tasks'

begin
	require 'rspec/core/rake_task'

	RSpec::Core::RakeTask.new(:spec)
	task default: :spec
rescue LoadError
	# Cannot load RSpec rake tasks in Production
end
