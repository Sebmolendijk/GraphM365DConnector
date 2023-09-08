# M365 Defender Automation

This repository contains resources to automate tasks for your M365 Defender incidents.

## Custom Connector

We provide a Logic Apps Custom Connector, built on top of the Microsoft Graph Security API beta, providing the actions detailed below. You can use it to build your own Logic Apps, or or use the ones we provide. Full deployment and configuration guide is available below.
The connector doesn't provide triggers, only actions.

You can deploy it in your Azure environment using the button below.

### Deployment and configuration

1. Go to Azure AD and create a new app registration. You can choose any relevant name for the app.

   ![Azure AD app registration](/img/1.png)
   ![New app registration](/img/2.png)
   ![Register the app](/img/3.png)

1. Save the application/client id for later and create a new secret with your preffered validity period. This information will be used when configuring the connector.

   ![Create a new secret](/img/4.png)
   ![Save the new secret](/img/5.png)

1. To be able to manage incidents, alerts and run Advanced Hunting queries using Graph API, you must delegate the right delegated permissions to the app.

   The requiered persmissions are:

   - SecurityIncidents.ReadWrite.All
   - SecurityAlerts.ReadWrite.All
   - ThreatHunting.Read.All

   ![Add permissions](/img/6.png)
   ![Select Graph](/img/7.png)
   ![Delegated permissions](/img/8.png)
   ![Select permissions](/img/9.png)
   ![Review permissions](/img/10.png)

1. Grant admin consent for your organization.

   ![Admin consent](/img/11.png)
   ![Admin consent](/img/12.png)

1. Deploy the Custom Connector in your Azure subscription using the button below.

   <a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FSebmolendijk%2FGraphM365DConnector%2Fmain%2Ftemplate%2Fdeploy.json" target="_blank">
   <img src="https://aka.ms/deploytoazurebutton"/>
   </a>

   > [!IMPORTANT]  
   > To use the connector within your Logic Apps, both resources must be deployed in the same Azure region.

1. Configure the Custom Connector to use the app

1. Add the Redirect URI to the app

1. Use the connector in your Logic Apps

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
