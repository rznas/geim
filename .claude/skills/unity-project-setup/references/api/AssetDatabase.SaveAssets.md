<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.SaveAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Writes all unsaved asset changes to disk.

Identical to EditorApplication.SaveAssets except not permitted to be called during serialization.

When calling this function, AssetModificationProcessor.OnWillSaveAssets will be invoked, allowing you to override which files are saved to disk.

EditorApplication.SaveAssets will be deprecated in a future release. Please use SaveAssets to maintain future compatibility.

```csharp
using UnityEngine;
using UnityEditor;
using System.Text;public class SaveAssetsExample : MonoBehaviour
{
    [MenuItem("APIExamples/SaveAssets")]
    static void AssetsToBeSaved()
    {
        Color[] colorList = new[] { Color.red, Color.green, Color.blue, Color.black, Color.gray };        for (int i = 0; i < colorList.Length; ++i)
        {
            Material material = new Material(Shader.Find("Specular"));
            var materialName = "material_" + i + ".mat";
            AssetDatabase.CreateAsset(material, "Assets/Artifacts/" + materialName);            material.SetColor("_Color", colorList[i]);
        }        AssetDatabase.SaveAssets();
    }
}public class OutputListOfFilesToSave : UnityEditor.AssetModificationProcessor
{
    //Will be invoked once for each call to CreateAsset()
    //and once for calling AssetDatabase.SaveAssets()
    static string[] OnWillSaveAssets(string[] paths)
    {
        Debug.Log("OnWillSaveAssets invoked");        StringBuilder assetsToBeSaved = new StringBuilder();
        assetsToBeSaved.AppendLine();        foreach (string path in paths)
        {
            assetsToBeSaved.Append(path);
            assetsToBeSaved.AppendLine();
        }        Debug.Log("Assets to be saved:" + assetsToBeSaved.ToString());        return paths;
    }
}
```
