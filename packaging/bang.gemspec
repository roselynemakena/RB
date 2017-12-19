require 'rubygems'
spec = Gem::Specification.new do |spec|
spec.name = 'bang'
spec.summary = 'A library for checking whether the big bang theory was real'
spec.description = %{This library calculates to high precision the
physical and electrostatic strength of a big bang theory. It knows
about most real-world shield configurations, as well as many
theoretical arrangements not yet built.}
spec.author = 'Makena'
spec.email = 'makena@example.com'
spec.homepage = 'http://www.example.com/software/bang/'
spec.files = Dir['lib/*.rb']
spec.version = '1.0.0'
end	