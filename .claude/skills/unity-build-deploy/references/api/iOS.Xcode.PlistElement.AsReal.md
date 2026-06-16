<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElement.AsReal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**float** The value of the real element.

### Description

Convenience function to convert to float.

The method is equivalent to `((PlistElementReal) el).value`. Throws exception if the element is not PlistElementReal.

```csharp
using System;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistElementAsRealExample
{
    [PostProcessBuild]
    public static void AsRealExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Retrieve an Info.plist element and convert it to "float" using the helper AsReal method
            // If the provided element doesn't exist, an exception will be thrown
            float exampleFloat = rootDict["ExampleFloat"].AsReal();
            
            // If you make any changes, don't forget to save them to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
