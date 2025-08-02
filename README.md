# Endpoint Security

This repo explores how remote monitoring and management (RMM) tools support endpoint security through automation, scripting, and policy-driven operations. It includes hands-on simulations, script-based monitoring workflows, and notes from live product demos.

---

## What This Covers

### 1. ConnectWise RMM Demo Notes

- `connectwise-rmm-notes/connectwise-rmm-demo-notes.md`  
  Detailed notes from a live ConnectWise RMM demo. Covers features like:
  - Endpoint visibility
  - Script deployment
  - Alerting and automation
  - Patch management
  - Agent behavior and policy structure

---

### 2. Simulated Endpoint Monitoring Lab

- `simulated-endpoint-monitoring/update-monitoring-lab.md`  
  A hands-on PowerShell lab that simulates:
  - Patch status detection
  - Timestamped logging
  - RMM-style behavior using the PSWindowsUpdate module

Includes screenshots and a working script to demonstrate how endpoint monitoring can be scripted and logged without enterprise tooling.

---

### 3. Diagnostics Lab

- `diagnostics-lab/diagnostics-lab.md`  
  Simulates a support workflow for investigating endpoint performance issues using PowerShell.  
  The script logs CPU usage, RAM consumption, and system uptime to a timestamped log file.

Includes real output, screenshots, and analysis of what those metrics mean — and how you'd respond to abnormal values.

---

## Purpose

This repo is focused on building a deeper understanding of endpoint support tooling, from patching to logging to automation. Each section is designed to mirror the real-world workflows seen in help desk, SOC, and MSP environments.

