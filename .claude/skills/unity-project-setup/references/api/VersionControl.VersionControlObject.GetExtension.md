<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlObject.GetExtension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**T** Extension object if it's supported by VersionControlObject. **null** otherwise.

### Description

Gets optional extension object.

You can implement optional extensions in your VersionControlObject to improve user experience. For example, the IIconOverlayExtension enables you to draw VCS status overlays over asset icons. See the documentation for the full list of extensions. Future versions of Unity might add new extensions or stop calling existing ones.

The default GetExtension implementation attempts to cast VersionControlObject to extension type. This allows you to implement extensions directly in your VersionControlObject derived class.

```csharp
using UnityEditor.VersionControl;
using UnityEngine;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject, IIconOverlayExtension
{
    static Texture2D s_Icon;    static Texture2D GetIcon()
    {
        if (s_Icon == null)
        {
            s_Icon = new Texture2D(8, 8);
            for (var y = 0; y < s_Icon.height; ++y)
            {
                for (var x = 0; x < s_Icon.width; ++x)
                {
                    var border = y == 0 || y == s_Icon.height - 1 || x == 0 || x == s_Icon.width - 1;
                    var color = border ? Color.white : Color.red;
                    s_Icon.SetPixel(x, y, color);
                }
            }
            s_Icon.Apply();
        }
        return s_Icon;
    }    public void DrawOverlay(string assetPath, IconOverlayType type, Rect rect)
    {
        var topLeft = new Rect(rect.x, rect.y, 8, 8);
        var icon = GetIcon();
        GUI.DrawTexture(topLeft, icon);
    }
}
```

To support extensions implemented in separate classes you must overwrite this method and return an appropriate object.

```csharp
using UnityEditor.VersionControl;
using UnityEngine;public class CustomIconOverlayExtension : IIconOverlayExtension
{
    public void DrawOverlay(string assetPath, IconOverlayType type, Rect rect)
    {
        var topLeft = new Rect(rect.x, rect.y, 8, 8);
        GUI.DrawTexture(topLeft, Texture2D.whiteTexture);
    }
}[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject
{
    readonly IIconOverlayExtension m_IconOverlayExtension = new CustomIconOverlayExtension();    public override T GetExtension<T>()
    {
        return m_IconOverlayExtension as T;
    }
}
```

Additional resources: VersionControlObject, IIconOverlayExtension, IInspectorWindowExtension, IPopupMenuExtension, ISettingsInspectorExtension.
