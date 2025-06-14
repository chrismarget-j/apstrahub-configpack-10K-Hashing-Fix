#  Copyright (c) Juniper Networks, Inc., 2025-2025.
#  All rights reserved.
#  SPDX-License-Identifier: MIT

terraform {
  backend "s3" {}
  required_providers {
    apstra = {
      source = "Juniper/apstra"
      version = "0.88.0"
    }
  }
}
