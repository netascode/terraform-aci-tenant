resource "aci_rest_managed" "fvTenant" {
  dn         = "uni/tn-${var.name}"
  class_name = "fvTenant"
  content = {
    name      = var.name
    nameAlias = var.alias
    descr     = var.description
  }
}

resource "aci_rest_managed" "aaaDomainRef" {
  for_each   = toset(var.security_domains)
  dn         = "uni/tn-${var.name}/domain-${each.value}"
  class_name = "aaaDomainRef"
  content = {
    name = each.value
  }
}
