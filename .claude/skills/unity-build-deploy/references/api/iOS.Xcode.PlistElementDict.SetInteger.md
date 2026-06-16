<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElementDict.SetInteger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key of the property. |
| val | The value of the property. |

### Description

Convenience method to set an integer property.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistSetIntegerExample
{
    [PostProcessBuild]
    public static void SetIntegerExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;
            
            
            // Use SetInteger to change the value of "UIDeviceFamily" to "2"
            rootDict.SetInteger("UIDeviceFamily", 2);            // Use SetInteger to create a new Info.plist entry called "ExampleInteger" with "10" as the value
            // If a specified key doesn't already exist in the Info.plist, a new entry will be created
            rootDict.SetInteger("ExampleInteger", 10);            // Write the changes to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
