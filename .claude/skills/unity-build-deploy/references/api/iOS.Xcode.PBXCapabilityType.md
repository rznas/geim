<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXCapabilityType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the capability types you can configure in a PBXProject.

```csharp
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddCapability  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUIDs for UnityFramework and Main targets
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();
        string unityFrameworkTargetGuid = pbxProject.GetUnityFrameworkTargetGuid();
        // Create an entitlements file for your capability
        string entitlementsFileName = "Example.entitlements";        PlistDocument plistDocument = new PlistDocument();
        plistDocument.Create();        PlistElementDict rootDict = plistDocument.root;
        rootDict.SetString("com.apple.developer.applesignin", "Default");        plistDocument.WriteToFile(Path.Combine(pathToBuiltProject, entitlementsFileName));        // Add 'Sign in with Apple' capability to the proejct with the entitlements file specified
        pbxProject.AddCapability(mainTargetGuid, PBXCapabilityType.SignInWithApple, entitlementsFileName);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }}
```

### Static Properties

| Property | Description |
| --- | --- |
| AccessWiFiInformation | Definition of the Access WiFi Information capability requirements. |
| AppAttest | Definition of the App Attest capability requirements. |
| AppGroups | Definition of the App Groups capability requirements. |
| ApplePay | Definition of the Apple Pay capability requirements. |
| ApplePayLaterMerchandising | Definition of the Apple Pay Later Merchandising capability requirements. |
| AppTransportSecurityException | Definition of the App Transport Security Exception capability requirements. |
| AssociatedDomains | Definition of the Associated Domains capability requirements. |
| AutoFillCredentialProvider | Definition of the Auto Fill Credential Provider capability requirements. |
| BackgroundModes | Definition of the Background Modes capability requirements. |
| ClassKit | Definition of the ClassKit capability requirements. |
| CommunicationNotifications | Definition of the Communication Notifications capability requirements. |
| DataProtection | Definition of the Data Protection capability requirements. |
| ExtendedVirtualAddressing | Definition of the Extended Virtual Addressing capability requirements. |
| FamilyControls | Definition of the Family Controls capability requirements. |
| FileProviderTestingMode | Definition of the File Provider Testing Mode capability requirements. |
| Fonts | Definition of the Fonts capability requirements. |
| GameCenter | Definition of the GameCenter capability requirements. |
| GameControllers | Definition of the Game Controllers capability requirements. |
| GameControllersTVOS | Definition of the tvOS Game Controller capability requirements. |
| GroupActivities | Definition of the Group Activities capability requirements. |
| HealthKit | Definition of the HealthKit capability requirements. |
| HealthKitEstimateRecalibration | Definition of the HealthKit Estimate Recalibration capability requirements. |
| HomeKit | Definition of the HomeKit capability requirements. |
| Hotspot | Definition of the Hotspot capability requirements. |
| iCloud | Definition of the iCloud capability requirements. |
| InAppPurchase | Definition of the In-App Purchase capability requirements. |
| IncreasedMemoryLimit | Definition of the Increased Memory Limit capability requirements. |
| InterAppAudio | Definition of the Inter-App Audio capability requirements. |
| JournalingSuggestions | Definition of the Journaling Suggestions capability requirements. |
| KeychainSharing | Definition of the Keychain Sharing capability requirements. |
| ManagedAppInstallationUI | Definition of the Managed App Installation UI capability requirements. |
| ManageThreadNetworkCredentials | Definition of the Manage Thread Network Credentials capability requirements. |
| Maps | Definition of the Maps capability requirements. |
| MatterAllowSetupPayload | Definition of the Matter Allow Setup Payload capability requirements. |
| MDMManagedAssociatedDomains | Definition of the MDM Managed Associated Domains capability requirements. |
| MessagesCollaboration | Definition of the Messages Collaboration capability requirements. |
| Multipath | Definition of the Multipath capability requirements. |
| NearFieldCommunication | Definition of the Near Field Communication (NFC) Tag Reading capability requirements. |
| NetworkExtensions | Definition of the Network Extensions capability requirements. |
| NetworkSlicing5G | Definition of the 5G Network Slicing capability requirements. |
| PersonalVPN | Definition of the Personal VPN capability requirements. |
| PushNotifications | Definition of the Push Notifications capability requirements. |
| PushToTalk | Definition of the Push To Talk capability requirements. |
| SensitiveContentAnalysis | Definition of the Sensitive Content Analysis capability requirements. |
| ShallowDepthAndPressure | Definition of the Shallow Depth And Pressure capability requirements. |
| SharedWithYou | Definition of the Shared With You capability requirements. |
| SignInWithApple | Definition of the Sign in with Apple capability requirements. |
| Siri | Definition of the Siri capability requirements. |
| SustainedExecution | Definition of the Sustained Execution capability requirements. |
| TapToPresentIDOniPhone | Definition of the Tap to Present ID on iPhone (Display Only) capability requirements. |
| TimeSensitiveNotifications | Definition of the Time Sensitive Notifications capability requirements. |
| Wallet | Definition of the Wallet capability requirements. |
| WeatherKit | Definition of the WeatherKit capability requirements. |
| WirelessAccessoryConfiguration | Definition of the Wireless Accessory Configuration capability requirements. |

### Properties

| Property | Description |
| --- | --- |
| frameworks | Specifies frameworks required by the capability. |
| optionalFramework | Specifies an optional framework a capability may use. |
| requiresEntitlements | Specifies if a capability requires entitlements. |

### Constructors

| Constructor | Description |
| --- | --- |
| PBXCapabilityType | This object represents what a capability changes in the PBXProject file. |
