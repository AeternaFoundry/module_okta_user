variable "users" {
  description = <<EOT
Map of users, attributes below
Required:
    - email
    - first_name
    - last_name
    - login
Optional:
    - city
    - cost_center
    - country_code
    - custom_profile_attributes
    - custom_profile_attributes_to_ignore
    - department
    - display_name
    - division
    - employee_number
    - expire_password_on_create
    - honorific_prefix
    - honorific_suffix
    - locale
    - manager
    - manager_id
    - middle_name
    - mobile_phone
    - nick_name
    - old_password
    - organization
    - password
    - password_inline_hook
    - postal_address
    - preferred_language
    - primary_phone
    - profile_url
    - realm_id
    - recovery_answer
    - recovery_question
    - second_email
    - skip_roles
    - state
    - status
    - street_address
    - timezone
    - title
    - user_type
    - zip_code
    - password_hash (block):
        - algorithm (required)
        - salt (optional)
        - salt_order (optional)
        - value (required)
        - work_factor (optional)
    - type (block):
        - id (required)
EOT

  type = map(object({
    email                               = string
    first_name                          = string
    last_name                           = string
    login                               = string
    city                                = optional(string)
    cost_center                         = optional(string)
    country_code                        = optional(string)
    custom_profile_attributes           = optional(string)
    custom_profile_attributes_to_ignore = optional(set(string))
    department                          = optional(string)
    display_name                        = optional(string)
    division                            = optional(string)
    employee_number                     = optional(string)
    expire_password_on_create           = optional(bool)
    honorific_prefix                    = optional(string)
    honorific_suffix                    = optional(string)
    locale                              = optional(string)
    manager                             = optional(string)
    manager_id                          = optional(string)
    middle_name                         = optional(string)
    mobile_phone                        = optional(string)
    nick_name                           = optional(string)
    old_password                        = optional(string)
    organization                        = optional(string)
    password                            = optional(string)
    password_inline_hook                = optional(string)
    postal_address                      = optional(string)
    preferred_language                  = optional(string)
    primary_phone                       = optional(string)
    profile_url                         = optional(string)
    realm_id                            = optional(string)
    recovery_answer                     = optional(string)
    recovery_question                   = optional(string)
    second_email                        = optional(string)
    skip_roles                          = optional(bool)
    state                               = optional(string)
    status                              = optional(string)
    street_address                      = optional(string)
    timezone                            = optional(string)
    title                               = optional(string)
    user_type                           = optional(string)
    zip_code                            = optional(string)
    password_hash = optional(object({
      algorithm   = string
      salt        = optional(string)
      salt_order  = optional(string)
      value       = string
      work_factor = optional(number)
    }))
    type = optional(object({
      id = string
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

