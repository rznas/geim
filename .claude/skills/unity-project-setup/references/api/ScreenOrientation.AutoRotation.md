<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScreenOrientation.AutoRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Autorotates the screen as necessary toward any of the enabled orientations.

When you assign ScreenOrientation.AutoRotation to the Screen.orientation property, the screen autorotates so that the bottom of the image points downwards. To set permitted orientations, use the following properties:

- Screen.autorotateToLandscapeLeft
- Screen.autorotateToLandscapeRight
- Screen.autorotateToPortrait
- Screen.autorotateToPortraitUpsideDown

You can set a combination of orientations. For example, you can set Screen.autorotateToPortrait and Screen.autorotateToPortraitUpsideDown to true whilst setting Screen.autorotateToLandscapeLeft and Screen.autorotateToLandscapeRight to false. In this case, the autorotation never chooses either of the landscape options.

**Note**: On Android and iOS platforms, you must set at least one orientation property for autorotation to true. Make sure to set the remaining properties to false.

WebGL builds only support autorotation on the mobile Chrome browser, and only allows orienting to a subset of combinations, these are:

- Individual orientations
- Opposite pairs of orientations
- All four of the above orientations.

If another combination is set, autorotation defaults to all four orientations.
 **Note:** Autorotation on WebGL only works in full-screen mode.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Screen.autorotateToPortrait = true;        Screen.autorotateToPortraitUpsideDown = true;        Screen.autorotateToLandscapeLeft = false;        Screen.autorotateToLandscapeRight = false;        Screen.orientation = ScreenOrientation.AutoRotation;
    }
}
```

Additional resources: Screen.orientation.
