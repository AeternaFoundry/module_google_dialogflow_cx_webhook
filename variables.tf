variable "dialogflow_cx_webhooks" {
  description = <<EOT
Map of dialogflow_cx_webhooks, attributes below
Required:
    - display_name
Optional:
    - deletion_policy
    - disabled
    - enable_spell_correction
    - enable_stackdriver_logging
    - parent
    - security_settings
    - timeout
    - generic_web_service (block):
        - allowed_ca_certs (optional)
        - http_method (optional)
        - oauth_config (optional, block):
            - client_id (required)
            - client_secret (optional)
            - scopes (optional)
            - secret_version_for_client_secret (optional)
            - token_endpoint (required)
        - parameter_mapping (optional)
        - request_body (optional)
        - request_headers (optional)
        - secret_version_for_username_password (optional)
        - secret_versions_for_request_headers (optional, block):
            - key (required)
            - secret_version (required)
        - service_account_auth_config (optional, block):
            - service_account (required)
        - service_agent_auth (optional)
        - uri (required)
        - webhook_type (optional)
    - service_directory (block):
        - generic_web_service (optional, block):
            - allowed_ca_certs (optional)
            - http_method (optional)
            - oauth_config (optional, block):
                - client_id (required)
                - client_secret (optional)
                - scopes (optional)
                - secret_version_for_client_secret (optional)
                - token_endpoint (required)
            - parameter_mapping (optional)
            - request_body (optional)
            - request_headers (optional)
            - secret_version_for_username_password (optional)
            - secret_versions_for_request_headers (optional, block):
                - key (required)
                - secret_version (required)
            - service_account_auth_config (optional, block):
                - service_account (required)
            - service_agent_auth (optional)
            - uri (required)
            - webhook_type (optional)
        - service (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name               = string
    deletion_policy            = optional(string)
    disabled                   = optional(bool)
    enable_spell_correction    = optional(bool)
    enable_stackdriver_logging = optional(bool)
    parent                     = optional(string)
    security_settings          = optional(string)
    timeout                    = optional(string)
    generic_web_service = optional(object({
      allowed_ca_certs = optional(list(string))
      http_method      = optional(string)
      oauth_config = optional(object({
        client_id                        = string
        client_secret                    = optional(string)
        scopes                           = optional(list(string))
        secret_version_for_client_secret = optional(string)
        token_endpoint                   = string
      }))
      parameter_mapping                    = optional(map(string))
      request_body                         = optional(string)
      request_headers                      = optional(map(string))
      secret_version_for_username_password = optional(string)
      secret_versions_for_request_headers = optional(list(object({
        key            = string
        secret_version = string
      })))
      service_account_auth_config = optional(object({
        service_account = string
      }))
      service_agent_auth = optional(string)
      uri                = string
      webhook_type       = optional(string)
    }))
    service_directory = optional(object({
      generic_web_service = optional(object({
        allowed_ca_certs = optional(list(string))
        http_method      = optional(string)
        oauth_config = optional(object({
          client_id                        = string
          client_secret                    = optional(string)
          scopes                           = optional(list(string))
          secret_version_for_client_secret = optional(string)
          token_endpoint                   = string
        }))
        parameter_mapping                    = optional(map(string))
        request_body                         = optional(string)
        request_headers                      = optional(map(string))
        secret_version_for_username_password = optional(string)
        secret_versions_for_request_headers = optional(list(object({
          key            = string
          secret_version = string
        })))
        service_account_auth_config = optional(object({
          service_account = string
        }))
        service_agent_auth = optional(string)
        uri                = string
        webhook_type       = optional(string)
      }))
      service = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

