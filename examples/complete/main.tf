module "aci_tenant" {
  source = "netascode/tenant/aci"

  name        = "ABC"
  alias       = "ABC-ALIAS"
  description = "My Description"
}
