<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidApplication-onConfigurationChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A callback to detect the device configuration changes when the application is running.

Unity invokes this callback for the configuration changes related to the following aspects.

- Orientation
- Keyboard visibility
- Dark theme
- Screen layout
- Screen size

For more information on the configuration changes, refer to the [Android developer documentation](https://developer.android.com/guide/topics/resources/runtime-changes).

```csharp
using UnityEngine;
using UnityEngine.Android;public class MyApplication : MonoBehaviour
{
    AndroidConfiguration m_PrevConfig;    public void Start()
    {
        m_PrevConfig = new AndroidConfiguration(AndroidApplication.currentConfiguration);
        AndroidApplication.onConfigurationChanged += OnConfigurationChanged;
    }    public void OnDisable()
    {
        AndroidApplication.onConfigurationChanged -= OnConfigurationChanged;
    }    private void OnConfigurationChanged(AndroidConfiguration newConfig)
    {
        if (m_PrevConfig.orientation != newConfig.orientation ||
            m_PrevConfig.screenLayoutSize != newConfig.screenLayoutSize)
        {
            ApplyUIChanges(newConfig.orientation, newConfig.screenLayoutSize);
        }        if (m_PrevConfig.uiModeNight != newConfig.uiModeNight)
        {
            ApplyUINightMode(newConfig.uiModeNight);
        }        if (m_PrevConfig.screenHeightDp != newConfig.screenHeightDp ||
            m_PrevConfig.screenWidthDp != newConfig.screenWidthDp)
        {
            ApplyScreenSizeChanges();
        }        m_PrevConfig.CopyFrom(newConfig);
    }    private void ApplyUIChanges(AndroidOrientation orientation, AndroidScreenLayoutSize layoutSize)
    {    }    private void ApplyUINightMode(AndroidUIModeNight nightMode)
    {    }    private void ApplyScreenSizeChanges()
    {    }
}
```
