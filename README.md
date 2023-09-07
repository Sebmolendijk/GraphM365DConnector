# M365 Defender Automation

This repository contains resources to automate tasks for your M365 Defender incidents.

## Resources - Custom Connector

We provide a Logic Apps Custom Connector, built on top of the Microsoft Graph Security API beta, providing the actions detailed below.
You can deploy it in your environment using this button:

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FSebmolendijk%2FGraphM365DConnector%2Fmain%2Ftemplate%2Fdeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>
</a>

### Actions

- List incidents
- Get incident
- Update incident
- Get incident alerts
- Add comment to an incident
- List alerts
- Get alert
- Update alert
- Add comment to an alert
- Run advanced hunting query
