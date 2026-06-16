<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Image-image.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The texture to display in this image. If you assign a `Texture` or `Texture2D`, the Image element will resize and show the assigned texture.

The following example creates an `Image` element and assigns a texture to it.

```csharp
using UnityEngine;
using UnityEngine.UIElements;public class AddImageExample : MonoBehaviour
{
    public Texture2D myTexture;    
    void OnEnable()
    {
        var root = GetComponent<UIDocument>().rootVisualElement;       
        var imageElement = new Image();
        imageElement.image = myTexture;        
        root.Add(imageElement);
    }
}
```
