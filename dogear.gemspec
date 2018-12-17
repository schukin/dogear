Gem::Specification.new do |s|
	s.name		= 'dogear'
	s.version	= '0.1.0'
	s.summary	= 'Simple wrapper around the DogEar API'
	s.author	= 'Dave Schukin'
	s.files		= ['lib/dogear.rb']
	s.add_dependency 'httparty', '~> 0.16'
	s.license	= 'MIT'
end