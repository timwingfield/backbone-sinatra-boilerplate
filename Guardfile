group :rb do
  guard 'rspec', :version => 2, :cli => "--color --fail-fast --drb" do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch('spec/spec_helper.rb')  { "spec" }
  end
end

group :js do
  spec_location = "spec/%s-spec"

  guard 'jasmine-headless-webkit' do
    watch(%r{^app/coffeescripts/(.*)\.(coffee|js)$}) { |m| newest_js_file(spec_location % m[1]) }
    watch(%r{^public/javascripts/vendor*})
    watch(%r{^spec/helpers*})
    watch(%r{^spec/(.*)-spec\..*}) { |m| newest_js_file(spec_location % m[1]) }
  end
end

