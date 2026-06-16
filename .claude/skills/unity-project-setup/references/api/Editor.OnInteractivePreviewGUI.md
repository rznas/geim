<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.OnInteractivePreviewGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| r | Rectangle in which to draw the preview. |
| background | Background image. |

### Description

Implement to create your own interactive custom preview. Interactive custom previews are used in the preview area of the inspector and the object selector.

Implement this method, instead of OnPreviewGUI, to display interactive custom previews. You can implement both methods when some previews are interactive and others are not. The overidden method should use the rectangle passed in and render a preview of the asset. The default implementation is a no-op.

**Note:** Inspector previews are limited to the primary editor of persistent objects (assets). For example, GameObjectInspector, MaterialEditor, TextureInspector, and so on. This means that it is currently not possible for a component to have its own inspector preview.

```csharp
using UnityEngine;
using UnityEditor;// Create an editor window which can display a chosen GameObject.
// Use OnInteractivePreviewGUI to display the GameObject and
// allow it to be interactive.public class ExampleClass: EditorWindow
{
    GameObject gameObject;
    Editor gameObjectEditor;    [MenuItem("Example/GameObject Editor")]
    static void ShowWindow()
    {
        GetWindowWithRect<ExampleClass>(new Rect(0, 0, 256, 256));
    }    void OnGUI()
    {
        gameObject = (GameObject) EditorGUILayout.ObjectField(gameObject, typeof(GameObject), true);        GUIStyle bgColor = new GUIStyle();
        bgColor.normal.background = EditorGUIUtility.whiteTexture;        if (gameObject != null)
        {
            if (gameObjectEditor == null)
                gameObjectEditor = Editor.CreateEditor(gameObject);            gameObjectEditor.OnInteractivePreviewGUI(GUILayoutUtility.GetRect(256, 256), bgColor);
        }
    }
}
```
