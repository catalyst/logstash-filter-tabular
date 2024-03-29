Gem::Specification.new do |s|

  s.name            = "logstash-filter-tabular"
  s.version         = "0.1.0"
  s.summary         = "Parses tab seperated values"
  s.description     = "This gem is a logstash-plugin to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install logstash-filter-tabular."
  s.authors         = ["Catalyst"]
  s.require_paths   = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash', '>= 1.4.0', '< 2.0.0'

  s.add_development_dependency 'logstash-devutils'
end
