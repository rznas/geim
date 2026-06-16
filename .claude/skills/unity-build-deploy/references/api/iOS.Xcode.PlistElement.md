<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a plist element.

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

### Properties

| Property | Description |
| --- | --- |
| this[string] | Convenience method to access properties of a dictionary element. |

### Public Methods

| Method | Description |
| --- | --- |
| AsArray | Convenience function to convert to array element. |
| AsBoolean | Convenience function to convert to bool. |
| AsDate | Convenience function to convert to date. |
| AsDict | Convenience function to convert to dictionary element. |
| AsInteger | Convenience function to convert to integer. |
| AsReal | Convenience function to convert to float. |
| AsString | Convenience function to convert to string. |
