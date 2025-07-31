# ConnectWise RMM Live Demo – July 31, 2025  
Attended by: Brittany Winters

---

## Product Overview

ConnectWise RMM is a remote monitoring and management (RMM) platform designed for managed service providers and IT support teams.  
It provides tools for:

- Endpoint monitoring  
- Patch deployment  
- Automated remediation  
- Script execution  
- Real-time alerting  

The platform also integrates with:

- **Auvik** – for network discovery and topology mapping  
- **BrightGauge** – for reporting and analytics  

---

## Technical Breakdown and Features

### Sites and Grouping

- **Sites** separate environments by client or location.
- **Static Groups** are manually created with selected devices.
- **Dynamic Groups** automatically populate based on device attributes like:
  - Operating system  
  - Device type  
  - Last login  
- Dynamic groups are useful for assigning policies or automation at scale.

---

### Patch Management and Automation

- Patches can be applied manually or automatically via policies.
- Supports both:
  - OS-level updates (e.g., Windows)
  - Third-party updates (e.g., Java, Adobe)
- Policies can:
  - Trigger patch deployment on detection
  - Reboot after patching
  - Send notifications
  - Log results
- Scripts can be attached to tasks or run as standalone automations.

---

### CVE and Vulnerability Integration

- Vulnerability dashboard displays CVEs relevant to monitored endpoints.
- Each CVE includes:
  - Severity score
  - Description
  - Remediation instructions
- Some CVEs can be patched directly from the interface.
- Others require manual remediation based on technical guidance.

---

### Script Execution and Remote Actions

- PowerShell, Batch, and Bash scripts can be run across selected endpoints.
- Tasks are organized into categories such as:
  - System cleanup  
  - Diagnostics  
  - Updates  
- Actions can be chained to triggers like:
  - High CPU usage  
  - Low disk space  
  - Service failure  

---

### Auvik Network Monitoring

- Auto-discovers all IP-reachable devices in a given site.
- Builds a live, interactive topology map showing:
  - Device roles (router, switch, firewall)
  - Connection paths
  - Online/offline status
- Enables proactive network infrastructure monitoring.
- Topology maps can be exported for offline reference.

---

### BrightGauge Reporting and Dashboards

- Allows creation of custom dashboards and reports using endpoint data.
- Tracks metrics such as:
  - Patch compliance  
  - System health  
  - Vulnerability exposure  
- Reports are:
  - Interactive  
  - Exportable  
  - Schedulable for recurring delivery  

---

## Example Workflow: Patch Failure with CVE Association

**Scenario:**  
A dynamic group reports a failed patch deployment. A matching critical CVE is listed in the vulnerability dashboard.

**Steps Taken:**

1. Open the group’s patch policy and confirm auto-deployment is enabled.
2. Review endpoint logs for failed patch attempts and remediation task results.
3. Locate CVE details within the dashboard.
4. Cross-reference remediation guidance from ConnectWise.
5. Run a manual remediation script to apply the missing patch.
6. Recheck status and confirm patch success.
7. If failure persists, escalate to Tier 2 support.
8. Document actions, timestamps, and outcome in the ticketing platform.

---

## Key Takeaways

ConnectWise RMM combines policy-driven automation with real-time endpoint and network visibility.  
When integrated with Auvik and BrightGauge, it creates a centralized workflow for patching, vulnerability management, and system health tracking.



