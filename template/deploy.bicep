
param name string = 'GraphSecurity'
param location string = resourceGroup().location

var iconBase64 = loadFileAsBase64('./icon.png')


resource symbolicname 'Microsoft.Web/customApis@2016-06-01' = {
  name: name
  location: location
  tags: {
  }
  properties: {

    apiType: 'Rest'
    backendService: {
      serviceUrl: 'https://graph.microsoft.com'
    }
 
    connectionParameters: {}
    description: 'Connector used to interact with Microsoft Graph Security API.'
    displayName: 'GraphSecurity'
    iconUri: iconBase64

    swagger: loadJsonContent('./GraphSecurity.json')
  
  }
}
