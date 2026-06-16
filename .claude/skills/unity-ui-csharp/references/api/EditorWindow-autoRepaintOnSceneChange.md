<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-autoRepaintOnSceneChange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable this property to automatically repaint the window when the SceneView is modified.

*Editor Window that renders what the main camera is "seeing".*

```csharp
// Simple script that lets you render the main camera in an Editor Window.

using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class CameraViewer : EditorWindow
{
    Camera camera;
    RenderTexture renderTexture;
    Image image;

    [MenuItem("Examples/Camera Viewer")]
    static void Init()
    {
        EditorWindow editorWindow = GetWindow(typeof(CameraViewer));
        editorWindow.autoRepaintOnSceneChange = true;
        editorWindow.Show();
    }

    public void Awake()
    {
        renderTexture = new RenderTexture((int)position.width,
            (int)position.height,
            (int)RenderTextureFormat.ARGB32);
    }

    public void OnEnable()
    {
        camera = Camera.main;
    }

    void CreateGUI()
    {
        image = new Image();
        image.image = renderTexture;
        image.style.width = Length.Percent(100);
        image.style.height = Length.Percent(100);
        rootVisualElement.Add(image);
    }

    public void Update()
    {
        if (renderTexture.width != position.width ||
            renderTexture.height != position.height)
            renderTexture = new RenderTexture((int)position.width,
                (int)position.height,
                (int)RenderTextureFormat.ARGB32);
            image.image = renderTexture;    

        if (camera != null)
        {
            camera.targetTexture = renderTexture;
            camera.Render();
            camera.targetTexture = null;
        }    
    }
}
```
