# M365 Defender Automation

This repository contains resources to automate tasks for your M365 Defender incidents.

## Custom Connector

We provide a Logic Apps Custom Connector, built on top of the Microsoft Graph Security API beta, providing the actions detailed below. You can use it to build your own Logic Apps, or or use the ones we provide.

You can deploy it in your Azure environment using this button:

> [!IMPORTANT]  
> To use the connector with your Logic Apps, they must be deployed in the same Azure region.

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

## Logic Apps using the Graph Security Connector

Coming soon...
