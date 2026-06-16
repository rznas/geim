<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-LoadingUXMLcsharp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Instantiate UXML from C# scripts

To build UI from a UXML file:

1. Load the file into a `VisualTreeAsset`,.
2. Use either:
  - `Instantiate()` to instantiate without a parent, which creates a new `TemplateContainer`.
  - `CloneTree(parent)` to clone inside a parent.

Once the UXML is instantiated, you can retrieve specific elements from the **visual tree** with UQuery.

The following example creates a custom Editor window and loads a UXML file as its content:

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;
using UnityEditor.UIElements;

public class MyWindow : EditorWindow  {
    [MenuItem ("Window/My Window")]
    public static void  ShowWindow () {
        EditorWindow w = EditorWindow.GetWindow(typeof(MyWindow));

        VisualTreeAsset uiAsset = AssetDatabase.LoadAssetAtPath<VisualTreeAsset>("Assets/MyWindow.uxml");
        VisualElement ui = uiAsset.Instantiate();

        w.rootVisualElement.Add(ui);
    }
}
```

To load UXML assets for runtime, set up `VisualTreeAsset` references in your MonoBehaviour scripts and assign the UXML assets from the **Inspector**. For more information and an example, refer to Support for runtime UI and Create a list view runtime UI.

## Additional resources

- Load UXML and USS from C# scripts
- UQuery
