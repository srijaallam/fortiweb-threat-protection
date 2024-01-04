resource "azurerm_dns_a_record" "azurednsrecord" {
  name                = "${var.username}"
  zone_name           = "fwebtecshop.com"
  resource_group_name = "fortiweb-threat-protection"
  ttl                 = 60
  target_resource_id  = module.module_azurerm_public_ip["pip_fweb"].public_ip.ip_address
}