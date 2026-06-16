<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PlistDocument.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an Apple property list document. For more information on property lists, refer to Apple's documentation.

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
| root | The root element of the property list document. |
| version | The version of the property list document. At the moment Apple uses '1.0' for all property list files. |

### Constructors

| Constructor | Description |
| --- | --- |
| PlistDocument | Creates a new property list document instance. |

### Public Methods

| Method | Description |
| --- | --- |
| Create | Create a new property list Document. |
| ReadFromFile | Reads the document from a file identified by the given path. |
| ReadFromStream | Reads the project from the given text reader. |
| ReadFromString | Reads the document from the given string. |
| WriteToFile | Writes the project contents to the specified file. |
| WriteToStream | Writes the document contents to the specified text writer. |
| WriteToString | Writes the document contents to a string. |
