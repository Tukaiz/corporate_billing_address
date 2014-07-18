require "corporate_billing_address/version"

module CorporateBillingAddress
  class CorporateBillingAddressFeatureDefinition
    include FeatureSystem::Provides
    def permissions
      []
    end
  end
  module Authorization
    module Permissions
    end
  end
end

require 'corporate_billing_address/railtie' if defined?(Rails)
