# Create a Rack web server that responds with the image of a cat
require_relative "text"
require 'rack'
require 'thin'

app = -> (env) do
  [200, {"Content-Type" => "text/html"}, Text.output]
end

Rack::Handler::Thin.run app
