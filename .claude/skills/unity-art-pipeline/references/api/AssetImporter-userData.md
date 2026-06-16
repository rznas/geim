<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter-userData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get or set any user data.

This can be useful during asset post processing if you want to associate eg. a model with an auxillary xml file to control some parts of the importing or you can put your xml data directly in to the userData field.

```csharp
using System.Xml;
using UnityEngine;
using UnityEditor;public class UserDataExample : AssetPostprocessor
{
    [MenuItem("Tools/UserDataExample")]
    static void Example()
    {
        var importer = AssetImporter.GetAtPath("Path/To/Your/Asset");
        
        if (importer != null)
        {
            // Set XML data directly into userData field
            importer.userData = "<Settings>\n    <Scale>4.0</Scale>\n</Settings>";
            
            importer.SaveAndReimport();
            Debug.Log($"XML data set directly in userData field: {importer.userData}");
        }
        else
        {
            Debug.LogError("Asset not found!");
        }
    }
    
    void OnPreprocessAsset()
    {
        if (!string.IsNullOrEmpty(assetImporter.userData))
        {
            var doc = new XmlDocument();
            
            //Get XML data from userData field
            doc.LoadXml(assetImporter.userData);
            
            var scaleNode = doc.SelectSingleNode("//Scale");
            if (scaleNode != null)
            {
                Debug.Log($"Updated userData {scaleNode.InnerText}");
            }
        }
    }
}
```
