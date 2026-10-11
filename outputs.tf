output "dialogflow_cx_webhooks_id" {
  description = "Map of id values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_cx_webhooks_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_cx_webhooks_disabled" {
  description = "Map of disabled values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no disabled are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.disabled if v.disabled != null }
}
output "dialogflow_cx_webhooks_display_name" {
  description = "Map of display_name values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_cx_webhooks_enable_spell_correction" {
  description = "Map of enable_spell_correction values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no enable_spell_correction are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.enable_spell_correction if v.enable_spell_correction != null }
}
output "dialogflow_cx_webhooks_enable_stackdriver_logging" {
  description = "Map of enable_stackdriver_logging values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no enable_stackdriver_logging are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.enable_stackdriver_logging if v.enable_stackdriver_logging != null }
}
output "dialogflow_cx_webhooks_generic_web_service" {
  description = "Map of generic_web_service values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no generic_web_service are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => one(v.generic_web_service) if v.generic_web_service != null && length(v.generic_web_service) > 0 }
}
output "dialogflow_cx_webhooks_name" {
  description = "Map of name values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_cx_webhooks_parent" {
  description = "Map of parent values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no parent are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "dialogflow_cx_webhooks_security_settings" {
  description = "Map of security_settings values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no security_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.security_settings if v.security_settings != null && length(v.security_settings) > 0 }
}
output "dialogflow_cx_webhooks_service_directory" {
  description = "Map of service_directory values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no service_directory are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => one(v.service_directory) if v.service_directory != null && length(v.service_directory) > 0 }
}
output "dialogflow_cx_webhooks_start_flow" {
  description = "Map of start_flow values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no start_flow are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.start_flow if v.start_flow != null && length(v.start_flow) > 0 }
}
output "dialogflow_cx_webhooks_timeout" {
  description = "Map of timeout values across all dialogflow_cx_webhooks, keyed the same as var.dialogflow_cx_webhooks except keys with no timeout are omitted"
  value       = { for k, v in google_dialogflow_cx_webhook.dialogflow_cx_webhooks : k => v.timeout if v.timeout != null && length(v.timeout) > 0 }
}

