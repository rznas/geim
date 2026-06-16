<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistElementDict.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a dictionary element in plist document.

```csharp
using System;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class PlistDocumentExample
{
    [PostProcessBuild]
    public static void PlistDocumentAPIExample(BuildTarget buildTarget, string pathToBuiltProject)
    {
        if (buildTarget == BuildTarget.iOS) 
        {
            // Read the contents of the Info.plist file that was generated during the build
            string plistPath = pathToBuiltProject + "/Info.plist";
            PlistDocument plist = new PlistDocument();
            plist.ReadFromFile(plistPath);
    
            // Get root plist element
            PlistElementDict rootDict = plist.root;            // Use helper methods such as SetBoolean, SetInteger or SetDate to modify or create new Info.plist entries
            // If a specified key doesn't already exist in the Info.plist, a new entry will be created
            rootDict.SetBoolean("ExampleBoolean", true);
            rootDict.SetInteger("ExampleInteger", 10);
            rootDict.SetDate("ExampleDate", DateTime.Today);            // Write the changes to the Info.plist file
            plist.WriteToFile(plistPath);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| this[string] | Convenience method to access the stored values. |
| values | The values stored in the dictionary element. |

### Constructors

| Constructor | Description |
| --- | --- |
| PlistElementDict | Creates new dictionary element. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateArray | Convenience method to set a property to a new array element. |
| CreateDict | Convenience method to set a property to a new dictionary element. |
| SetBoolean | Convenience method to set a boolean property. |
| SetDate | Convenience method to set a date property. |
| SetInteger | Convenience method to set an integer property. |
| SetReal | Convenience method to set an real property. |
| SetString | Convenience method to set a string property. |

### Inherited Members

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
