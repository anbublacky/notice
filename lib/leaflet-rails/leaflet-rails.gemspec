# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "leaflet-rails"
  s.version = "0.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Akshay Joshi"]
  s.date = "2013-09-29"
  s.description = "This gem provides the leaflet.js map display library for your Rails 3/4 application."
  s.email = ["joshi.a@gmail.com"]
  s.files = [".gitignore", ".travis.yml", "CHANGELOG.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "leaflet-rails.gemspec", "lib/leaflet-rails.rb", "lib/leaflet-rails/version.rb", "lib/leaflet-rails/view_helpers.rb", "spec/spec_helper.rb", "spec/view_helpers_spec.rb", "vendor/assets/images/layers-2x.png", "vendor/assets/images/layers.png", "vendor/assets/images/marker-icon-2x.png", "vendor/assets/images/marker-icon.png", "vendor/assets/images/marker-shadow.png", "vendor/assets/javascripts/leaflet.js.erb", "vendor/assets/stylesheets/leaflet.css.erb", "vendor/assets/stylesheets/leaflet.ie.css"]
  s.homepage = ""
  s.licenses = ["BSD"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "leaflet-rails"
  s.rubygems_version = "2.0.3"
  s.summary = "Use leaflet.js with Rails 3/4."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov-rcov>, [">= 0"])
      s.add_development_dependency(%q<actionpack>, [">= 3.2.0"])
      s.add_development_dependency(%q<activesupport>, [">= 3.2.0"])
      s.add_development_dependency(%q<activemodel>, [">= 3.2.0"])
      s.add_development_dependency(%q<railties>, [">= 3.2.0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov-rcov>, [">= 0"])
      s.add_dependency(%q<actionpack>, [">= 3.2.0"])
      s.add_dependency(%q<activesupport>, [">= 3.2.0"])
      s.add_dependency(%q<activemodel>, [">= 3.2.0"])
      s.add_dependency(%q<railties>, [">= 3.2.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov-rcov>, [">= 0"])
    s.add_dependency(%q<actionpack>, [">= 3.2.0"])
    s.add_dependency(%q<activesupport>, [">= 3.2.0"])
    s.add_dependency(%q<activemodel>, [">= 3.2.0"])
    s.add_dependency(%q<railties>, [">= 3.2.0"])
  end
end
