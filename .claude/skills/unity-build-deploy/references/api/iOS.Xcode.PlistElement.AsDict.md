<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElement.AsDict.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**PlistElementDict** The element as PlistElementDict.

### Description

Convenience function to convert to dictionary element.

The method is equivalent to `(PlistElementDict) el`. Throws exception if the element is not PlistElementDict.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistElementAsDictExample
{
    [PostProcessBuild]
    public static void AsDictExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Retrieve an Info.plist element and convert it to "PlistElementDict" using the helper AsDict method
            // If the provided element doesn't exist, an exception will be thrown
            PlistElementDict exampleDict = rootDict["ExampleDict"].AsDict();
            
            // If you make any changes, don't forget to save them to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
