<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.OnLostFocus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the window loses keyboard focus.

Additional resources: OnFocus.


 *Restores normal view when you lose focus on this window.*

```csharp
// Simple script that lets you preview your main camera in
// Orthographic view when selected.

using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class OrthographicPreview : EditorWindow
{
    RenderTexture renderTexture;
    Camera camera;
    Image image;

    [MenuItem("Examples/Orthographic Previewer")]
    static void Init()
    {
        OrthographicPreview window =
            (OrthographicPreview)EditorWindow.GetWindow(typeof(OrthographicPreview), true, "My Empty Window");
        window.Show();
    }

    void OnEnable()
    {
        int w = (int)this.position.width;
        int h = (int)this.position.height;

        image = new Image();
        renderTexture = new RenderTexture(w, h, 32, RenderTextureFormat.ARGB32);
        camera = Camera.main;
    }
    
    void OnDisable()
    {
        Object.DestroyImmediate(renderTexture);
    }

    void CreateGUI()
    {
        var buttonClose = new Button();
        buttonClose.text = "Close";
        buttonClose.clicked += () =>
        {
            camera.orthographic = false;
            this.Close();
        };
        rootVisualElement.Add(buttonClose);

        if (renderTexture != null)
        {
            image.image = renderTexture;
            rootVisualElement.Add(image);          
        }
    }

    void OnFocus()
    {
        Selection.activeTransform = camera.transform;
        camera.orthographic = true;
    }

    void Update()
    {
        int w = (int)this.position.width;
        int h = (int)this.position.height;
        if (renderTexture.width != w || renderTexture.height != h)
        {
            Object.DestroyImmediate(renderTexture);
            renderTexture = new RenderTexture(w, h, 32, RenderTextureFormat.ARGB32);
            image.image = renderTexture;
        }

        if (camera != null)
        {
            camera.targetTexture = renderTexture;
            camera.Render();
            camera.targetTexture = null;
        }
    }

    void OnLostFocus()
    {
        camera.orthographic = false;
    }
}
```
