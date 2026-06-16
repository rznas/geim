<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IHasCustomMenu.AddItemsToMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds your custom menu items to an Editor Window.

The following example shows how you can implement this method in a class that derives from EditorWindow and implements IHasCustomMenu.

```csharp
using UnityEngine;
using UnityEditor;public class CustomMenuExample : EditorWindow, IHasCustomMenu
{
    [MenuItem("MyWindows/Custom Menu Window Example")]
    static void ShowCustomWindow()
    {
        GetWindow<CustomMenuExample>().Show();
    }    public void AddItemsToMenu(GenericMenu menu)
    {
        menu.AddItem(new GUIContent("Hello"), false, OnHello);
    }    void OnHello()
    {
        Debug.Log("Hello!");
    }
}
```
