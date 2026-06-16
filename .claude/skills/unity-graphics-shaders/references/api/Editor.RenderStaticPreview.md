<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.RenderStaticPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The project-relative path of the asset to operate on. |
| subAssets | An array of all assets at assetPath. |
| width | Width of the created texture in pixels. |
| height | Height of the created texture in pixels. |

### Returns

**Texture2D** The generated static preview `Texture2D`, or `null` if Unity uses the default icon.

### Description

Override this method if you want to render a static preview.

Override `RenderStaticPreview` to render a list of assets into a single texture. This method needs custom source code that can merge the assets together. The size of the created texture can be supplied by the provided width and height.

If null is returned the built-in icon for the class type is used.

```csharp
// Render the provided asset texture into an Inspector thumbnail.
using UnityEngine;
using System.Collections;
using UnityEditor;using System.IO;public class Example : ScriptableObject
{
    public Texture2D PreviewIcon;
}
[CustomEditor(typeof(Example))]
public class ExampleEditor : UnityEditor.Editor
{
    public static void CreateAsset<Example>() where Example : ScriptableObject
    {
        Example asset = ScriptableObject.CreateInstance<Example>();        string path = AssetDatabase.GetAssetPath(Selection.activeObject);        if (path == "")
        {
            path = "Assets";
        }
        else if (Path.GetExtension(path) != "")
        {
            path = path.Replace(Path.GetFileName(AssetDatabase.GetAssetPath(Selection.activeObject)), "");
        }        string assetPathAndName = AssetDatabase.GenerateUniqueAssetPath(path + "/New " + typeof(Example).ToString() + ".asset");        AssetDatabase.CreateAsset(asset, assetPathAndName);
        EditorUtility.FocusProjectWindow();
        Selection.activeObject = asset;
    }    [MenuItem("Examples/RenderStaticPreview example")]
    public static void CreateAsset()
    {
        CreateAsset<Example>();
    }    public override void OnInspectorGUI()
    {
        Example e = (Example)target;        EditorGUI.BeginChangeCheck();        // Example has a single arg called PreviewIcon which is a Texture2D
        e.PreviewIcon = (Texture2D)
                EditorGUILayout.ObjectField(
                    "Thumbnail",                    // string
                    e.PreviewIcon,                  // Texture2D
                    typeof(Texture2D),              // Texture2D object, of course
                    false                           // allowSceneObjects
                );        if (EditorGUI.EndChangeCheck())
        {
            EditorUtility.SetDirty(e);
            AssetDatabase.SaveAssets();
            Repaint();
        }
    }    public override Texture2D RenderStaticPreview(string assetPath, Object[] subAssets, int width, int height)
    {
        Example example = (Example)target;        if (example == null || example.PreviewIcon == null)
            return null;        // example.PreviewIcon must be a supported format: ARGB32, RGBA32, RGB24,
        // Alpha8 or one of float formats
        Texture2D tex = new Texture2D (width, height);
        EditorUtility.CopySerialized (example.PreviewIcon, tex);        return tex;
    }
}
```
