#  Copyright (c) Juniper Networks, Inc., 2025-2025.
#  All rights reserved.
#  SPDX-License-Identifier: MIT

resource "apstra_datacenter_configlet" "configlet" {
  blueprint_id = var.blueprint_id
  name         = var.name
  condition    = "role in [\"superspine\", \"spine\", \"leaf\"]"
  generators   = [
    {
      config_style  = "junos"
      section       = "top_level_set_delete"
      template_text = "set forwarding-options hash-key family inet layer-4"
    },
  ]
}
