<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-textureNonReadable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a non-readable Texture2D generated from the downloaded data (Read Only).

Same as texture, but marks texture as non-readable, effectively freeing system memory.

Additional resources: TextureImporter.isReadable.

```csharp
// Get the latest webcam shot from outside "Friday's" in Times Squareusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string url = "https://images.earthcam.com/ec_metros/ourcams/fridays.jpg";
    IEnumerator Start()
    {
        // Start a download of the given URL
        using (WWW www = new WWW(url))
        {
            // Wait for download to complete
            yield return www;            // assign texture
            Renderer renderer = GetComponent<Renderer>();
            renderer.material.mainTexture = www.textureNonReadable;
        }
    }
}
```
