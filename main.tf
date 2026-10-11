resource "google_dialogflow_cx_webhook" "dialogflow_cx_webhooks" {
  for_each = var.dialogflow_cx_webhooks

  display_name               = each.value.display_name
  deletion_policy            = each.value.deletion_policy
  disabled                   = each.value.disabled
  enable_spell_correction    = each.value.enable_spell_correction
  enable_stackdriver_logging = each.value.enable_stackdriver_logging
  parent                     = each.value.parent
  security_settings          = each.value.security_settings
  timeout                    = each.value.timeout

  dynamic "generic_web_service" {
    for_each = each.value.generic_web_service != null ? [each.value.generic_web_service] : []
    content {
      allowed_ca_certs = generic_web_service.value.allowed_ca_certs
      http_method      = generic_web_service.value.http_method
      dynamic "oauth_config" {
        for_each = generic_web_service.value.oauth_config != null ? [generic_web_service.value.oauth_config] : []
        content {
          client_id                        = oauth_config.value.client_id
          client_secret                    = oauth_config.value.client_secret
          scopes                           = oauth_config.value.scopes
          secret_version_for_client_secret = oauth_config.value.secret_version_for_client_secret
          token_endpoint                   = oauth_config.value.token_endpoint
        }
      }
      parameter_mapping                    = generic_web_service.value.parameter_mapping
      request_body                         = generic_web_service.value.request_body
      request_headers                      = generic_web_service.value.request_headers
      secret_version_for_username_password = generic_web_service.value.secret_version_for_username_password
      dynamic "secret_versions_for_request_headers" {
        for_each = generic_web_service.value.secret_versions_for_request_headers != null ? generic_web_service.value.secret_versions_for_request_headers : []
        content {
          key            = secret_versions_for_request_headers.value.key
          secret_version = secret_versions_for_request_headers.value.secret_version
        }
      }
      dynamic "service_account_auth_config" {
        for_each = generic_web_service.value.service_account_auth_config != null ? [generic_web_service.value.service_account_auth_config] : []
        content {
          service_account = service_account_auth_config.value.service_account
        }
      }
      service_agent_auth = generic_web_service.value.service_agent_auth
      uri                = generic_web_service.value.uri
      webhook_type       = generic_web_service.value.webhook_type
    }
  }

  dynamic "service_directory" {
    for_each = each.value.service_directory != null ? [each.value.service_directory] : []
    content {
      dynamic "generic_web_service" {
        for_each = service_directory.value.generic_web_service != null ? [service_directory.value.generic_web_service] : []
        content {
          allowed_ca_certs = generic_web_service.value.allowed_ca_certs
          http_method      = generic_web_service.value.http_method
          dynamic "oauth_config" {
            for_each = generic_web_service.value.oauth_config != null ? [generic_web_service.value.oauth_config] : []
            content {
              client_id                        = oauth_config.value.client_id
              client_secret                    = oauth_config.value.client_secret
              scopes                           = oauth_config.value.scopes
              secret_version_for_client_secret = oauth_config.value.secret_version_for_client_secret
              token_endpoint                   = oauth_config.value.token_endpoint
            }
          }
          parameter_mapping                    = generic_web_service.value.parameter_mapping
          request_body                         = generic_web_service.value.request_body
          request_headers                      = generic_web_service.value.request_headers
          secret_version_for_username_password = generic_web_service.value.secret_version_for_username_password
          dynamic "secret_versions_for_request_headers" {
            for_each = generic_web_service.value.secret_versions_for_request_headers != null ? generic_web_service.value.secret_versions_for_request_headers : []
            content {
              key            = secret_versions_for_request_headers.value.key
              secret_version = secret_versions_for_request_headers.value.secret_version
            }
          }
          dynamic "service_account_auth_config" {
            for_each = generic_web_service.value.service_account_auth_config != null ? [generic_web_service.value.service_account_auth_config] : []
            content {
              service_account = service_account_auth_config.value.service_account
            }
          }
          service_agent_auth = generic_web_service.value.service_agent_auth
          uri                = generic_web_service.value.uri
          webhook_type       = generic_web_service.value.webhook_type
        }
      }
      service = service_directory.value.service
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

