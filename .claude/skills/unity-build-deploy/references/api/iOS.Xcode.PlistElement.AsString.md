<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElement.AsString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The value of the string element.

### Description

Convenience function to convert to string.

The method is equivalent to `((PlistElementString) el).value`. Throws exception if the element is not PlistElementString.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistElementAsStringExample
{
    [PostProcessBuild]
    public static void AsStringExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Retrieve the "CFBundleVersion" entry and convert it to "string" using the helper AsString method
            string buildVersion = rootDict["CFBundleVersion"].AsString();
            
            // If you make any changes, don't forget to save them to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
