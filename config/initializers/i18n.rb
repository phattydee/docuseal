# frozen_string_literal: true

I18n.backend.instance_eval do
  def load_yml(filename)
    YAML.safe_load(File.read(filename), permitted_classes: [Symbol], aliases: true).each do |locale, data|
      data.delete('sent_with_docuseal_pro_html')
      data.delete('show_send_with_docuseal_pro_attribution_in_emails_html')
      data.delete('unlock_with_docuseal_pro')
      data.delete('upgrade_your_plan_to_invite_more_users_contact_email')
      data.delete('upgrade_to_send_unlimited_signature_requests')
      data.delete('upgade_now')
      data.delete('send_signature_request_emails_without_limits_with_docuseal_pro')
      data.delete('unlock_more_user_roles_with_docuseal_pro')
      data.delete('your_pro_plan_payment_is_overdue')
      data.delete(
        'click_here_to_update_your_payment_details_and_clear_the_invoice_to_ensure_uninterrupted_service_html'
      )
      data.delete(
        'your_pro_plan_has_been_suspended_due_to_unpaid_invoices_you_can_update_your_payment_details_to_settle_the_invoice_and_continue_using_docuseal_or_cancel_your_subscription'
      )
      data.delete('pro_user_seats_used')
      data.delete('manage_plan')
      data.delete('upgrade')
      data.delete('plans')
      data.delete(
        'users_count_total_users_count_pro_users_limit_was_reached_to_invite_additional_users_please_purchase_more_pro_user_seats_via_the_manage_plan_button'
      )
      data.delete('start_with_pro')
      data.delete(
        'count_10_signature_request_emails_sent_this_month_upgrade_to_pro_to_send_unlimited_signature_request_email'
      )

      store_translations(locale, data)
    end
  end
end