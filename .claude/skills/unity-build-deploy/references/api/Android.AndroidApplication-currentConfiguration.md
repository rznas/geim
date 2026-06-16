<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidApplication-currentConfiguration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides current configuration for the running application.

Additional resources: AndroidApplication.onConfigurationChanged.

```csharp
using UnityEngine;
using UnityEngine.Android;public class ShowConfiguration : MonoBehaviour
{    public void Start()
    {
        var contents = new System.Text.StringBuilder();
        var c = AndroidApplication.currentConfiguration;
        contents.AppendLine($"* ColorMode, Hdr: {c.colorModeHdr}");
        contents.AppendLine($"* ColorMode, Gamut: {c.colorModeWideColorGamut}");
        contents.AppendLine($"* DensityDpi: {c.densityDpi}");
        contents.AppendLine($"* FontScale: {c.fontScale}");
        contents.AppendLine($"* FontWeightAdj: {c.fontWeightAdjustment}");
        contents.AppendLine($"* Keyboard: {c.keyboard}");
        contents.AppendLine($"* Keyboard Hidden, Hard: {c.hardKeyboardHidden}");
        contents.AppendLine($"* Keyboard Hidden, Normal: {c.keyboardHidden}");
        contents.AppendLine($"* Mcc: {c.mobileCountryCode}");
        contents.AppendLine($"* Mnc: {c.mobileNetworkCode}");
        contents.AppendLine($"* Navigation: {c.navigation}");
        contents.AppendLine($"* NavigationHidden: {c.navigationHidden}");
        contents.AppendLine($"* Orientation: {c.orientation}");
        contents.AppendLine($"* ScreenHeightDp: {c.screenHeightDp}");
        contents.AppendLine($"* ScreenWidthDp: {c.screenWidthDp}");
        contents.AppendLine($"* SmallestScreenWidthDp: {c.smallestScreenWidthDp}");
        contents.AppendLine($"* ScreenLayout, Direction: {c.screenLayoutDirection}");
        contents.AppendLine($"* ScreenLayout, Size: {c.screenLayoutSize}");
        contents.AppendLine($"* ScreenLayout, Long: {c.screenLayoutLong}");
        contents.AppendLine($"* ScreenLayout, Round: {c.screenLayoutRound}");
        contents.AppendLine($"* TouchScreen: {c.touchScreen}");
        contents.AppendLine($"* UiMode, Night: {c.uiModeNight}");
        contents.AppendLine($"* UiMode, Type: {c.uiModeType}");        contents.AppendLine($"* Locales ({c.locales.Length}):");
        for (int i = 0; i < c.locales.Length; i++)
        {
            var l = c.locales[i];
            contents.AppendLine($"* Locale[{i}] {l.country}-{l.language}");
        };        Debug.Log($"Current Config:\n{contents}");
    }
}
```
