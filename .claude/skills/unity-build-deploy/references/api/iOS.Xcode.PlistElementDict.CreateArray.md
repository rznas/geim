<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElementDict.CreateArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key of the property. Use the official identifier (for example, `UISupportedExternalAccessoryProtocols`). |

### Returns

**PlistElementArray** The new PlistElementArray that this method creates.

### Description

Convenience method to set a property to a new array element.

If the key already exists, this method overwrites the existing value with a new empty array. Use this method to initialize configuration arrays in `Info.plist`, such as supported interface orientations, background modes, or URL scheme lists, before you add values using the returned array element.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistCreateArrayExample
{
    [PostProcessBuild]
    public static void CreateArrayExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Use CreateArray to create a new array entry called "AdditionalInfo" in the Info.plist file
            rootDict.CreateArray("AdditionalInfo");
            
            // Get the reference to the newly created "AdditionalInfo" array
            var array = rootDict["AdditionalInfo"].AsArray();
            
            // Use helper methods such as AddString, AddInteger or AddBoolean to add new values to the array
            array.AddString("PluginInfo");
            array.AddString("Disabled");
            array.AddInteger(75);
            array.AddBoolean(false);
            
            // Write the changes to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
