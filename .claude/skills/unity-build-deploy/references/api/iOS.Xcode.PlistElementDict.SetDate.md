<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElementDict.SetDate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key of the property. |
| val | The value of the property. |

### Description

Convenience method to set a date property.

```csharp
using System;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistSetDateExample
{
    [PostProcessBuild]
    public static void SetDateExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Use SetDate to modify an existing Date entry in the Info.plist or create a new entry if the specified key doesn't exist 
            // The example below will create a new entry called "ExampleDate" with today's date as value
            rootDict.SetDate("ExampleDate", DateTime.Today);
            
            // Write the changes to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
