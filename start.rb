require_relative "config/environment"
require "component_host"

ComponentHost.start("count-component") do |host|
  host.register(CountComponent::Start)
end
