Rails.application.configure do
  config.x.ssl = true
  config.x.base_domain = 'staging.hhs-gbas.org'
  config.x.program_name = 'gbas-staging'
end

require_relative '_shared_staging_production'
require_relative '_shared'
