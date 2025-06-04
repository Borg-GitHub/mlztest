
targetScope = 'subscription'

@description('Short identifier for the environment (e.g., "corp", "dev"). Used in naming conventions.')
param identifier string

@allowed([
  'dev'
  'test'
  'prod'
])
@description('Target environment name.')
param environmentAbbreviation string = 'dev'

@description('Region to deploy the resources in.')
param location string = 'eastus'

@description('Name of the AVD Host Pool')
param avdHostPoolName string

@description('Friendly display name for the AVD Host Pool')
param avdHostPoolFriendlyName string

@allowed([
  'Pooled'
  'Personal'
])
@description('Type of the AVD Host Pool.')
param avdHostPoolType string = 'Pooled'

@description('Size of each session host VM.')
@allowed([
  'Standard_D4s_v3'
  'Standard_F8s_v2'
  'Standard_NV12s_v3'
])
param avdVmSize string = 'Standard_D4s_v3'

@description('Number of session host VMs to deploy.')
param avdVmCount int = 2

@description('Comma-separated list of user principal names (UPNs) to assign to the host pool.')
param avdUserPrincipalNames string

@allowed([
  'Gallery'
  'Custom'
])
@description('Image source type for the session hosts.')
param avdImageType string = 'Gallery'

@description('Marketplace URN for the image (if using Gallery image).')
param avdGalleryImage string = 'MicrosoftWindowsDesktop:windows-11:win11-22h2-avd:latest'

// AVD resource example placeholder
module avd 'avd/hostpool.bicep' = {
  name: 'avdHostPool'
  params: {
    hostPoolName: avdHostPoolName
    friendlyName: avdHostPoolFriendlyName
    hostPoolType: avdHostPoolType
    vmSize: avdVmSize
    vmCount: avdVmCount
    userPrincipalNames: avdUserPrincipalNames
    imageType: avdImageType
    galleryImage: avdGalleryImage
    location: location
  }
}
