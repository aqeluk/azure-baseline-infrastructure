# Azure Baseline Network

This baseline network is used as the foundation for future Azure app deployments.

## Overview

This folder contains a simple Azure baseline environment used for development and learning.

The goal is to provide a **repeatable, secure starting point** for deploying workloads into Azure.

## Resources

Terraform currently provisions:

- **Resource Group**
  - `rg-dev-base-uks`
- **Virtual Network**
  - `vnet-dev-base-uks` with address space `10.0.0.0/16`
- **Subnets**
  - `snet-dev-web-uks` – `10.0.1.0/24` (intended for web/app tier)
  - `snet-dev-data-uks` – `10.0.2.0/24` (intended for data tier)
- **Network Security Groups**
  - `nsg-dev-web-uks` – allows inbound HTTP (80) and HTTPS (443)
  - `nsg-dev-data-uks` – allows inbound DB traffic (5432) only from the web subnet

## Naming Convention

Resources follow the pattern:

- Resource Group: `rg-<env>-<workload>-<regionSuffix>`
- Virtual Network: `vnet-<env>-<workload>-<regionSuffix>`
- Subnets: `snet-<env>-<tier>-<regionSuffix>`
- NSGs: `nsg-<env>-<tier>-<regionSuffix>`

For this environment:

- `env` = `dev`
- `workload` = `base`
- `regionSuffix` = `uks` (for `uksouth`)

## Network Topology

```text
           +-----------------------------+
           |      vnet-dev-base-uks      |
           |      10.0.0.0/16           |
           +-----------------------------+
              |                     |
   10.0.1.0/24 (web)       10.0.2.0/24 (data)
   snet-dev-web-uks        snet-dev-data-uks
       |                         |
   nsg-dev-web-uks          nsg-dev-data-uks
