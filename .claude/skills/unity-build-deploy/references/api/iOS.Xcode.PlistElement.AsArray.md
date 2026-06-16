<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElement.AsArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**PlistElementArray** The element as PlistElementArray.

### Description

Convenience function to convert to array element.

The method is equivalent to `(PlistElementArray) el`. Throws exception if the element is not PlistElementArray.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistElementAsArrayExample
{
    [PostProcessBuild]
    public static void AsArrayExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
       
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Retrieve the supported orientations entry (which is called "UISupportedInterfaceOrientations" in the plist)
            var orientations = rootDict["UISupportedInterfaceOrientations"];            // Use the AsArray helper method to convert the element to an array
            PlistElementArray orientationsArray = orientations.AsArray();
            
            // Add Portrait and PortraitUpsideDown as additional supported orientations
            orientationsArray.AddString("UIInterfaceOrientationPortrait");
            orientationsArray.AddString("UIInterfaceOrientationPortraitUpsideDown");            // Write the changes to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```
