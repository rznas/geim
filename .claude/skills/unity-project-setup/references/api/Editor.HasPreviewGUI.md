<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.HasPreviewGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if this component can be Previewed in its current state.

### Description

Override this method in subclasses if you implement OnPreviewGUI.

You can also use it to disable or enable preview depending on the target asset. The default implementation simply returns false, so if you override OnPreviewGUI you have to override this method as well.

**Note:** Inspector previews are limited to the primary editor of persistent objects (assets), e.g., GameObjectInspector, MaterialEditor, TextureInspector. This means that it is currently not possible for a component to have its own inspector preview.

```csharp
using UnityEngine;
using UnityEditor;public class GameObjectEditorWindow: EditorWindow
{
    GameObject gameObject;
    Editor gameObjectEditor;    [MenuItem("Window/GameObject Editor")]
    static void ShowWindow()
    {
        GetWindow<GameObjectEditorWindow>("GameObject Editor");
    }    void OnGUI()
    {
        gameObject = (GameObject) EditorGUILayout.ObjectField(gameObject, typeof(GameObject), true);        if (gameObject != null)
        {
            if (gameObjectEditor == null)
                gameObjectEditor = Editor.CreateEditor(gameObject);            gameObjectEditor.OnPreviewGUI(GUILayoutUtility.GetRect(500, 500), EditorStyles.whiteLabel);
        }
    }
}
```
