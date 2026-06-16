<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElement.AsDate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**DateTime** The value of the date element.

### Description

Convenience function to convert to date.

The method is equivalent to `((PlistElementDate) el).value`. Throws exception if the element is not PlistElementDate.

```csharp
using System;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistElementAsDateExample
{
    [PostProcessBuild]
    public static void AsDateExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Retrieve an Info.plist element and convert it to "DateTime" using the helper AsDate method
            // If the provided element doesn't exist, an exception will be thrown
            DateTime exampleDate = rootDict["ExampleData"].AsDate();
            
            // If you make any changes, don't forget to save them to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
