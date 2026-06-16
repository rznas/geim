<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UnityasaLibrary-UWP.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Integrate Unity into UWP applications

You can use the Unity as a Library feature to integrate the Unity Runtime Library in Universal Windows Platform (UWP) applications. The Unity Runtime Library exposes API controls to manage when and how to load, activate, and unload content within another UWP application.

This integration enables you to include Unity-powered features in your UWP application, such as:

- 3D/2D real-time rendering
- **AR** experience
- 3D model interaction
- 2D mini-games

To integrate the Unity Runtime Library into a UWP application, follow these steps:

1. Go to **File > Build Profiles**.
2. From the list of platforms in the **Platforms** panel, select **Universal Windows Platform** or create a build profile for **Universal Windows Platform**.
3. In the **Platform Settings** section, select **Build Type > XAML**.
4. Build your project.

As a result, Unity creates a Visual Studio project, which you can use to embed the Unity Runtime Library into another UWP application. The project is a general XAML UWP project in the form of a `MainPage.xaml` file which contains a SwapChainPanel setup to load the Unity project. You can extend or replace this project with any other non-Unity application business logic.

**Note:** The `MainPage.xaml` file is present only if you’re building a UWP app using the **XAML** build type from the Unity Editor.

When using a SwapchainPanel, Unity renders over other elements. This enables you to render a small object with a transparent background on top of other non-Unity application content. To do this, enable the PlayerSettings.WSA-transparentSwapchain option. You can unload the Unity engine to reclaim resources when Unity loads up with Application.Unload.

## Limitations

If you use another application to host your Unity build, Unity won’t control the runtime lifecycle, so your build might not work. You should also be aware of the following limitations:

- You can’t load or integrate more than one instance of the Unity runtime.
- You might need to adapt your native and managed **plug-ins** to work properly.

## Additional resources

- Using Unity as a Library in other applications
