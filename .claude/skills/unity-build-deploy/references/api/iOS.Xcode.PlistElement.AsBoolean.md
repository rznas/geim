<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElement.AsBoolean.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** The value of the boolean element.

### Description

Convenience function to convert to bool.

The method is equivalent to `((PlistElementBoolean) el).value`. Throws exception if the element is not PlistElementBoolean.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistElementAsBooleanExample
{
    [PostProcessBuild]
    public static void AsBooleanExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Retrieve the "UIRequiresPersistentWiFi" entry and convert it to "bool" using the helper AsBoolean method
            bool requiresWiFi = rootDict["UIRequiresPersistentWiFi"].AsBoolean();            // Check if the app is set to require WIFI network connection
            if (requiresWiFi)
            {
                // Do something
            }
            
            // If you make any changes, don't forget to save them to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
