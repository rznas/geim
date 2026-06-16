<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSAImageType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the icon and logo image types that represent the application. For example, images to display within the Microsoft Store, start menu, or taskbar.

A Universal Windows Platform application must specify icon and logo images as part of the package before you can submit it to the Microsoft Store. Unity exposes a subset of these image types through the Player Settings and automatically adds any set values to the package manifest file it generates. You can add images and edit these images later, either within Visual Studio or by directly editing the package manifest file. To display the image, the device combines the image type value with an image scale which allows multiple versions of a given icon/logo to accommodate different screen sizes and resolutions.

Unity deliberately does not provide a complete set of default images, and the application fails certification until you supply images. This ensures that you do not submit your application to the Microsoft Store with placeholder images.
These image types are Windows-specific and different from the Splash Screen setting, which displays logos that run within the application.

For information on Universal Windows Platform application icons and logos, see [Microsoft's documentation](https://docs.microsoft.com/en-us/windows/uwp/design/style/app-icons-and-logos). 
**Important:** Unity writes image types to the package manifest when it builds Universal Windows Platform for the first time. Building into an existing Universal Windows Platform build folder does not update the package manifest and does not apply any changes.

### Properties

| Property | Description |
| --- | --- |
| PackageLogo | The image that represents your application within the Microsoft Store. |
| SplashScreenImage | The image to display as the splash screen while the Universal Windows Platform application opens. |
| UWPSquare44x44Logo | The image to display as the application icon within the start menu, taskbar, and task manager. |
| UWPSquare71x71Logo | The image to display as the small tile in the start menu. |
| UWPSquare150x150Logo | The image to display as the medium tile in the start menu and Microsoft Store. |
| UWPSquare310x310Logo | The image to display as the large tile in the start menu and Microsoft Store. |
| UWPWide310x150Logo | The image to display as the wide tile in the start menu and Microsoft Store. |
