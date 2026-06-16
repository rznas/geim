<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-useCustomKeystore.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable application signing with a custom keystore.

When enabled, the Android application is signed with the key specified in keyaliasName from the keystore specified in keystoreName. When disabled, the application is signed with a debug key.

The following code example demonstrates how to enable application signing with a custom keystore and configure keystore-specific settings.

```csharp
using UnityEngine;
using UnityEditor;public class CustomKeystoreSample : MonoBehaviour
{
    [MenuItem("Build/Custom Keystore Sample")]
    public static void UseCustomKeystoreSample()
    {
        // Set useCustomKeystore value to true
        PlayerSettings.Android.useCustomKeystore = true;
        // Log the useCustomKeystore value
        Debug.Log($"useCustomKeystore: {PlayerSettings.Android.useCustomKeystore}");
        
        // Sign in settings
        // Set keyaliasName
        PlayerSettings.Android.keyaliasName = "keyalias";
        // Log the keyalias name
        Debug.Log($"keyaliasName: {PlayerSettings.Android.keyaliasName}");
        
        // Set keyaliasPass
        PlayerSettings.Android.keyaliasPass = "keyAliasPass";
        // Log the keyalias password
        Debug.Log($"keyaliasPass: {PlayerSettings.Android.keyaliasPass}");
        
        // Set keystoreName
        PlayerSettings.Android.keystoreName = "keystoreName";
        // Log the keystore name
        Debug.Log($"keystoreName: {PlayerSettings.Android.keystoreName}");
        
        // Set keystorePass
        PlayerSettings.Android.keystorePass = "keyStorePass";
        // Log the keystore password
        Debug.Log($"keystorePass: {PlayerSettings.Android.keystorePass}");
    }
}
```
