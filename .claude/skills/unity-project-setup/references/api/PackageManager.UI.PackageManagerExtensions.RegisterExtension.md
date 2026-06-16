<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.UI.PackageManagerExtensions.RegisterExtension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| extension | A Package Manager UI extension. |

### Description

Registers a new Package Manager UI extension.

The example creates an extension button called Log Package Info. The button will appear in the Package Manager details header, and will log the package name and version when pressed.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.PackageManager.UI;
using UnityEngine.UIElements;
using PackageInfo = UnityEditor.PackageManager.PackageInfo;[InitializeOnLoad]
public static class PackageManagerUIExtension
{
    static PackageManagerUIExtension()
    {
        // Register UI extension when Unity starts
        PackageManagerExtensions.RegisterExtension(new CustomPackageManagerExtension());
    }
}// Inherit from IPackageManagerExtension to create your own extension class.
public class CustomPackageManagerExtension : IPackageManagerExtension
{
    private string selectedPackageName = "";
    private Button extensionButton;
    // Create the button.
    public VisualElement CreateExtensionUI()
    {
        extensionButton = new Button(() =>
        {
            if (!string.IsNullOrEmpty(selectedPackageName))
            {
                Debug.Log($"Package Name: {selectedPackageName}");
            }
            else
            {
                Debug.LogWarning("No package selected.");
            }
        })
        {
            text = "Log Package Name"
        };
        return extensionButton;
    }
    
    // Called when selecting a package (Uses package name)
    public void OnPackageSelectionChange(PackageInfo packageInfo)
    {
        if (packageInfo == null)
        {
            extensionButton.visible = false;
            selectedPackageName = "";
            return;
        }
        
        extensionButton.visible = true;
        selectedPackageName = packageInfo.name;
        Debug.Log($"Selected Package: {selectedPackageName}");
    }
    
    public void OnPackageAddedOrUpdated(PackageInfo packages) { }
    public void OnPackageRemoved(PackageInfo packages) { }
}
```
