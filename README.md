# M365 Defender Automation

This repository contains resources to automate tasks for your M365 Defender incidents.

## Custom Connector

We provide a Logic Apps Custom Connector, built on top of the Microsoft Graph Security API beta, providing the actions detailed below. You can use it to build your own Logic Apps, or or use the ones we provide. Full deployment and configuration guide is available below.
The connector doesn't provide triggers, only actions.

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
   During deployment, provide a resource group and region to use.

      <a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FSebmolendijk%2FGraphM365DConnector%2Fmain%2Ftemplate%2Fdeploy.json" target="_blank">
      <img src="https://aka.ms/deploytoazurebutton"/>
      </a>

   > [!IMPORTANT]  
   > To use the connector within your Logic Apps, both resources must be deployed in the same Azure region.

   ![Deployment](/img/13.png)

1. Once the deployment is completed, go to the resource.

   ![Azure resource](/img/14.png)

1. Now that the connector is deployed, we must configure it to be used in Logic Apps.

   ![Edit connector](/img/15.png)

   Go to the **Security** tab:
   ![Security tab](/img/16.png)

   Under **OAuth 2.0**, click on **Edit**:
   ![OAuth config](/img/17.png)

   Provide the **client id**, **the app secret value** and **https://graph.microsoft.com** in the following fields and update the connector:
   ![OAuth values](/img/18.png)

1. Once the update is completed, you are provided with a **Redirect URL**. Copy this value. We will need it to complete the configuration at the AAD app level:

   ![Redirect URL](/img/19.png)

1. Go back to your Azure AD app and go to the **Authentication** section.
   There, you must add the copied URL:

   ![Add a platform](/img/20.png)
   ![Web](/img/21.png)
   ![URL](/img/22.png)
   ![URL is added](/img/23.png)

1. Your connector is now ready to be used in your Logic Apps! Remember that they must be deployed in the **same region** as your connector!

   ![Connector](/img/24.png)

### Available Actions to use in Logic Apps

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

## Logic Apps examples

Coming soon...
