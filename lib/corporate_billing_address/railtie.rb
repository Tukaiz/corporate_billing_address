module CorporateBillingAddress
  class Railtie < Rails::Railtie
    initializer "my_railtie.configure_rails_initialization" do |app|
      FeatureBase.register(app, CorporateBillingAddress)
      FeatureBase.register_autoload_path(app, "corporate_billing_address")
    end
    config.after_initialize do
      FeatureBase.inject_feature_record("Corporate Billing Address",
        "CorporateBillingAddress",
        "This defines the prefilled out billing address when a user is paying with invoice."
      )
      FeatureBase.inject_permission_records(
        CorporateBillingAddress,
        CorporateBillingAddressFeatureDefinition.new.permissions
      )
    end
  end
end
