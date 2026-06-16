<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSA.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to Microsoft Store App-specific player settings.

You can use these properties and methods to programmatically access Universal Windows Platform-specific build settings.

### Static Properties

| Property | Description |
| --- | --- |
| applicationDescription | The description text that the Microsoft Store displays with your application. |
| certificateIssuer | The certificate issuer for the current Universal Windows Platform certificate. |
| certificateNotAfter | The expiration date for the current Universal Windows Platform certificate. |
| certificatePath | The file path for the current Universal Windows Platform certificate. |
| certificateSubject | The subject for the current Universal Windows Platform certificate. |
| defaultTileSize | The tile size type to use as the default size for the application's tile. |
| inputSource | The input source type for mouse, pen, and touch input events in a XAML app. |
| largeTileShowName | The application name to display on the Large Tile. |
| lastRequiredScene | The scene index number from the Scenes in Build list for the last scene that must be present in a Streaming Install build. |
| mediumTileShowName | The application name to display on the Medium Tile. |
| packageName | The name of the Universal Windows Platform application package to install on the device. |
| packageVersion | The version of the Universal Windows Platform application package to install on the device. |
| splashScreenBackgroundColor | The Override background color for the Unity splash screen. |
| supportStreamingInstall | Indicates whether you can launch the Universal Windows Platform application package before installation is complete. |
| syncCapabilities | Sync the Capabilities set in the Unity Editor to the AppXManifest |
| tileBackgroundColor | The background color to use the application's tiles. |
| tileForegroundText | The color style to use for the title text within the application's tile. |
| tileShortName | An alternative, shorter title name to display in the application's tile. |
| tileShowName | Indicates which tiles display the application's display name. |
| transparentSwapchain | Sets AlphaMode on the swap chain to DXGI_ALPHA_MODE_PREMULTIPLIED. |
| vcxProjDefaultLanguage | Sets the XML <defaultLanguage> value specified in the generated Visual Studio project file (.vcxproj). Applies only to the initial file generation, preexisting files will not be modified. When empty 'en-US' will be used.Only applies to the UWP platform. |
| wideTileShowName | Indicates whether to display the application name on the wide tile. |

### Static Methods

| Method | Description |
| --- | --- |
| GetCapability | Checks if the your project sets the specified UWP Capability. |
| GetTargetDeviceFamily | Checks if your project targets the specified device family. |
| GetVisualAssetsImage | Retrieves the Asset path for the image you set as the Universal Windows Platform package logo. |
| SetCapability | Includes or removes the specified UWP Capability in the Universal Windows Platform build. |
| SetCertificate | Sets the certificate to use to sign the Universal Windows Platform application package. |
| SetTargetDeviceFamily | Adds or removes the specified UWP device family from the list of device families the Universal Windows Platform application build supports. |
| SetVisualAssetsImage | Sets the image to use as the Universal Windows Platform package logo. |
