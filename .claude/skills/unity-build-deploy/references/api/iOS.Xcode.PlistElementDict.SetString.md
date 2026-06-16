<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElementDict.SetString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key of the property. |
| val | The value of the property. |

### Description

Convenience method to set a string property.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistSetStringExample
{
    [PostProcessBuild]
    public static void SetStringExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;
            
            // Use SetString to change the value of "CFBundleVersion" to "7.6.5"
            rootDict.SetString("CFBundleVersion","7.6.5");            // Use SetString to create a new Info.plist entry called "ExampleString" with "Hello, World!" as the value
            // If a specified key doesn't already exist in the Info.plist, a new entry will be created
            rootDict.SetString("ExampleString", "Hello, World!");
            
            // Write the changes to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
