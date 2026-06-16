<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Help.HasHelpForObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is there a help page for this object?

Additional resources: Help.ShowHelpForObject, Help.GetHelpURLForObject.


 *Editor Window that lets you load docs for any Selected GameObject.*

```csharp
using UnityEngine;
using UnityEditor;// EditorScript that quickly searchs for a help page
// of the selected Object.
//
// If there is no page found on the Manual it opens the Unity forum.class QuickHelper : EditorWindow
{
    Object source;    [@MenuItem("Example/QuickHelper _h")]
    static void Init()
    {
        EditorWindow window = EditorWindow.GetWindowWithRect(typeof(QuickHelper), new Rect(0, 0, 165, 100));
        window.Show();
    }    void OnGUI()
    {
        EditorGUILayout.BeginHorizontal();
        source = EditorGUILayout.ObjectField(source, typeof(Object));
        EditorGUILayout.EndHorizontal();        if (GUILayout.Button("Search!"))
        {
            if (source == null)
            {
                this.ShowNotification(new GUIContent("No object selected for searching"));
            }
            else
            {
                if (Help.HasHelpForObject(source))
                {
                    Help.ShowHelpForObject(source);
                }
                else
                {
                    Help.BrowseURL("http://forum.unity3d.com/search.php");
                }
            }
        }
    }
}
```
