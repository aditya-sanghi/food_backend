require 'rails_helper'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.format                      = [:html, :json]
  config.response_headers_to_include = ["Content-Type"]
  config.keep_source_order           = true
  config.post_body_formatter         = Proc.new { |params| params.to_json }
end

RSpec.configure do |config|
  config.formatter = RspecApiDocumentation::ApiFormatter
end
