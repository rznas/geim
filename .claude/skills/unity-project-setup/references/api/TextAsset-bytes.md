<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextAsset-bytes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The raw bytes of the text asset. (Read Only)

This returns an array containing all the data in a file, including invisible characters such as byte-order marks for Unicode text files.

This property returns a new C# array with a copy of the asset data every time it's called. To get access the original asset data without creating an additional copy, use GetData.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Drag a .jpg or .png file onto the image variable.
    TextAsset image;    void Start()
    {
        var tex = new Texture2D(4, 4);
        tex.LoadImage(image.bytes);
        GetComponent<Renderer>().material.mainTexture = tex;
    }
}
```

Additional resources: text, GetData, Text Assets.
