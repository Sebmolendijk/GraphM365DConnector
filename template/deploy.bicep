param name string = 'GraphSecurity'
param location string = resourceGroup().location

resource symbolicname 'Microsoft.Web/customApis@2016-06-01' = {
  name: name
  location: location
  tags: {
  }
  properties: {
    apiDefinitions: {
      modifiedSwaggerUrl: 'string'
      originalSwaggerUrl: 'string'
    }
    apiType: 'string'
    backendService: {
      serviceUrl: 'string'
    }
    brandColor: 'string'
    capabilities: [
      'string'
    ]
    connectionParameters: {}
    description: 'string'
    displayName: 'string'
    iconUri: loadFileAsBase64('./icon.png')
    runtimeUrls: [
      'string'
    ]
    swagger: loadJsonContent('./GraphSecurity.json')
    wsdlDefinition: {
    }
  }
}
