Gem::Specification.new do |s|
  s.name = 'thingspace-payments-sdk-sdk'
  s.version = '1.3.0'
  s.summary = 'thingspace information'
  s.description = 'all the information about thingspace'
  s.authors = ['Adeel Qureshi']
  s.email = ['adeelahmedqureshi02@gmail.com']
  s.homepage = 'https://www.dawn.com/'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.0')
  s.add_dependency('apimatic_core', '~> 0.3.0')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
