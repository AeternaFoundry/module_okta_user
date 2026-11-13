output "users_id" {
  description = "Map of id values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.id }
}
output "users_activated" {
  description = "Map of activated values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.activated }
}
output "users_city" {
  description = "Map of city values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.city }
}
output "users_cost_center" {
  description = "Map of cost_center values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.cost_center }
}
output "users_country_code" {
  description = "Map of country_code values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.country_code }
}
output "users_created" {
  description = "Map of created values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.created }
}
output "users_custom_profile_attributes" {
  description = "Map of custom_profile_attributes values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.custom_profile_attributes }
}
output "users_custom_profile_attributes_to_ignore" {
  description = "Map of custom_profile_attributes_to_ignore values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.custom_profile_attributes_to_ignore }
}
output "users_department" {
  description = "Map of department values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.department }
}
output "users_display_name" {
  description = "Map of display_name values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.display_name }
}
output "users_division" {
  description = "Map of division values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.division }
}
output "users_email" {
  description = "Map of email values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.email }
}
output "users_employee_number" {
  description = "Map of employee_number values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.employee_number }
}
output "users_expire_password_on_create" {
  description = "Map of expire_password_on_create values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.expire_password_on_create }
}
output "users_first_name" {
  description = "Map of first_name values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.first_name }
}
output "users_honorific_prefix" {
  description = "Map of honorific_prefix values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.honorific_prefix }
}
output "users_honorific_suffix" {
  description = "Map of honorific_suffix values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.honorific_suffix }
}
output "users_last_login" {
  description = "Map of last_login values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.last_login }
}
output "users_last_name" {
  description = "Map of last_name values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.last_name }
}
output "users_last_updated" {
  description = "Map of last_updated values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.last_updated }
}
output "users_locale" {
  description = "Map of locale values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.locale }
}
output "users_login" {
  description = "Map of login values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.login }
}
output "users_manager" {
  description = "Map of manager values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.manager }
}
output "users_manager_id" {
  description = "Map of manager_id values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.manager_id }
}
output "users_middle_name" {
  description = "Map of middle_name values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.middle_name }
}
output "users_mobile_phone" {
  description = "Map of mobile_phone values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.mobile_phone }
}
output "users_nick_name" {
  description = "Map of nick_name values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.nick_name }
}
output "users_old_password" {
  description = "Map of old_password values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.old_password }
  sensitive   = true
}
output "users_organization" {
  description = "Map of organization values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.organization }
}
output "users_password" {
  description = "Map of password values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.password }
  sensitive   = true
}
output "users_password_changed" {
  description = "Map of password_changed values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.password_changed }
}
output "users_password_hash" {
  description = "Map of password_hash values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => one(v.password_hash) }
}
output "users_password_inline_hook" {
  description = "Map of password_inline_hook values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.password_inline_hook }
}
output "users_postal_address" {
  description = "Map of postal_address values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.postal_address }
}
output "users_preferred_language" {
  description = "Map of preferred_language values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.preferred_language }
}
output "users_primary_phone" {
  description = "Map of primary_phone values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.primary_phone }
}
output "users_profile_url" {
  description = "Map of profile_url values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.profile_url }
}
output "users_raw_status" {
  description = "Map of raw_status values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.raw_status }
}
output "users_realm_id" {
  description = "Map of realm_id values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.realm_id }
}
output "users_recovery_answer" {
  description = "Map of recovery_answer values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.recovery_answer }
  sensitive   = true
}
output "users_recovery_question" {
  description = "Map of recovery_question values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.recovery_question }
}
output "users_second_email" {
  description = "Map of second_email values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.second_email }
}
output "users_skip_roles" {
  description = "Map of skip_roles values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.skip_roles }
}
output "users_state" {
  description = "Map of state values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.state }
}
output "users_status" {
  description = "Map of status values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.status }
}
output "users_status_changed" {
  description = "Map of status_changed values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.status_changed }
}
output "users_street_address" {
  description = "Map of street_address values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.street_address }
}
output "users_timezone" {
  description = "Map of timezone values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.timezone }
}
output "users_title" {
  description = "Map of title values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.title }
}
output "users_type" {
  description = "Map of type values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => one(v.type) }
}
output "users_user_type" {
  description = "Map of user_type values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.user_type }
}
output "users_zip_code" {
  description = "Map of zip_code values across all users, keyed the same as var.users"
  value       = { for k, v in okta_user.users : k => v.zip_code }
}

