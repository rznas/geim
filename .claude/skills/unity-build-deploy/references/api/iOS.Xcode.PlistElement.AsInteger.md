<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElement.AsInteger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The value of the integer element.

### Description

Convenience function to convert to integer.

The method is equivalent to `((PlistElementInteger) el).value`. Throws exception if the element is not PlistElementInteger.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistElementAsIntegerExample
{
    [PostProcessBuild]
    public static void AsIntegerExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;
            
            // Retrieve the "UIDeviceFamily" entry and convert it to "int" using the helper AsInteger method
            int deviceFamily = rootDict["UIDeviceFamily"].AsInteger();
            
            // Check if both iPhones and iPads are supported 
            if (deviceFamily == 2)
            {
                // Do something
            }
            
            // If you make any changes, don't forget to save them to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
