<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElementDict.CreateDict.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key of the property. Use the official identifier (for example, `NSAppTransportSecurity`). |

### Returns

**PlistElementDict** The new PlistElementDict that this method creates.

### Description

Convenience method to set a property to a new dictionary element.

```csharp
using System;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistCreateDictExample
{
    [PostProcessBuild]
    public static void CreateDictExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;
            
            // Use CreateDict to create a new dictionary entry called "ExtraSettings" in the Info.plist file
            var dict = rootDict.CreateDict("ExtraSettings");
            
            // Use helper methods such as SetBoolean, SetString or SetDate to add new values to the dictionary
            dict.SetBoolean("AdminModeEnabled", true);
            dict.SetString("CustomPath", "/appname/Contents");
            dict.SetDate("AssetBuildDate", DateTime.Today);
            
            // Write the changes to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
