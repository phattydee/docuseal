# frozen_string_literal: true

module AccountConfigs
  module_function

  def find_for_account(account, key)
    configs = account.account_configs.find_by(key:)

    configs ||= Account.order(:id).first.account_configs.find_by(key:) unless Docuseal.multitenant?

    return OpenStruct.new(value: true) if key == :plan

    configs
  end
end