resource "okta_user" "users" {
  for_each = var.users

  email                               = each.value.email
  first_name                          = each.value.first_name
  last_name                           = each.value.last_name
  login                               = each.value.login
  city                                = each.value.city
  cost_center                         = each.value.cost_center
  country_code                        = each.value.country_code
  custom_profile_attributes           = each.value.custom_profile_attributes
  custom_profile_attributes_to_ignore = each.value.custom_profile_attributes_to_ignore
  department                          = each.value.department
  display_name                        = each.value.display_name
  division                            = each.value.division
  employee_number                     = each.value.employee_number
  expire_password_on_create           = each.value.expire_password_on_create
  honorific_prefix                    = each.value.honorific_prefix
  honorific_suffix                    = each.value.honorific_suffix
  locale                              = each.value.locale
  manager                             = each.value.manager
  manager_id                          = each.value.manager_id
  middle_name                         = each.value.middle_name
  mobile_phone                        = each.value.mobile_phone
  nick_name                           = each.value.nick_name
  old_password                        = each.value.old_password
  organization                        = each.value.organization
  password                            = each.value.password
  password_inline_hook                = each.value.password_inline_hook
  postal_address                      = each.value.postal_address
  preferred_language                  = each.value.preferred_language
  primary_phone                       = each.value.primary_phone
  profile_url                         = each.value.profile_url
  realm_id                            = each.value.realm_id
  recovery_answer                     = each.value.recovery_answer
  recovery_question                   = each.value.recovery_question
  second_email                        = each.value.second_email
  skip_roles                          = each.value.skip_roles
  state                               = each.value.state
  status                              = each.value.status
  street_address                      = each.value.street_address
  timezone                            = each.value.timezone
  title                               = each.value.title
  user_type                           = each.value.user_type
  zip_code                            = each.value.zip_code

  dynamic "password_hash" {
    for_each = each.value.password_hash != null ? [each.value.password_hash] : []
    content {
      algorithm   = password_hash.value.algorithm
      salt        = password_hash.value.salt
      salt_order  = password_hash.value.salt_order
      value       = password_hash.value.value
      work_factor = password_hash.value.work_factor
    }
  }

  dynamic "type" {
    for_each = each.value.type != null ? [each.value.type] : []
    content {
      id = type.value.id
    }
  }
}

