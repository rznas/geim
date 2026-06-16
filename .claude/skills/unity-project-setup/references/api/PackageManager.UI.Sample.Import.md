<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.UI.Sample.Import.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| options | Custom import options. See ImportOptions for more information. Note that ImportOptions are flag attributes, therefore you can set multiple import options using the `|` operator. |

### Returns

**bool** Returns true if the import is successful. Returns false otherwise.

### Description

Imports the package sample into the `Assets` folder.

The example creates an Editor menu item called Example. When you select Example &gt; Import Sample, a window opens with the default packageName and a "Show Samples" button.

```csharp
using UnityEditor;
using UnityEditor.PackageManager.UI;
using System.Linq;
using UnityEngine;
public class SampleImporter : EditorWindow
{
    // Change this to the package you want to import the sample from.
    private string packageName = "com.unity.timeline";
    private bool showSamples = false;    [MenuItem("Example/Import Sample")]
    public static void ShowWindow()
    {
        GetWindow<SampleImporter>("Sample Importer");
    }
    private void OnGUI()
    {
        GUILayout.Label("Import Sample from Package", EditorStyles.boldLabel);
        packageName = EditorGUILayout.TextField("Package Name", packageName);
        // This part adds an action function to the button. 
        if (GUILayout.Button("Show Samples"))
        {
            showSamples = true;
        }
        
        if(showSamples)
            ShowSamples(packageName);
    }
    private void ShowSamples(string packageName)
    {
        // Setting the version to null automatically takes the recommended or latest package version.
        // You can optionally import a specific version of the package by replacing "null" by the specific version of that package.
        // Get all samples from the package.
        var samples = Sample.FindByPackage(packageName, null);
        // If nothing is returned, then this package doesn't contain samples.
        if (samples == null || !samples.Any())
        {
            GUILayout.Label($"No samples found for package: {packageName}", EditorStyles.boldLabel);
            return;
        }
        foreach (var sample in samples)
        {
            GUILayout.Label($"Found sample: {sample.displayName}");
            // Give the option to import the sample if it isn't in the project.
            // If the sample is already in the project, only show a message in the Example window.
            if (!sample.isImported)
            {
                if (GUILayout.Button("Import"))
                {
                    sample.Import(Sample.ImportOptions.OverridePreviousImports);
                    Debug.Log($"Imported sample: {sample.displayName}");
                }
            }
            else
            {
                GUILayout.Label($"Sample '{sample.displayName}' is already imported.");
            }
        }
    }
}
```
