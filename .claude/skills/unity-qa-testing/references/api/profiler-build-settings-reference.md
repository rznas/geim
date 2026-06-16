<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/profiler-build-settings-reference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Build Profiles Profiler settings

Configure the way the Profiler collects data when you build your application.

The Build Profiles window has settings which you can enable to change how the Profiler measures data.

## Prerequisites

To enable the Profiler specific settings, you must enable the ****Development Build**** setting:

1. Open the **Build Profiles** window (menu: **File > Build Profiles**)
2. Select your application’s target platform
3. Enable the **Development Build** setting

## Profiler Build Profiles settings

There are two settings related to how the Profiler collects data.

| **Setting** | **Description** |
| --- | --- |
| **Autoconnect Profiler** | Enable this setting to automatically connect to the Profiler when your application starts. The Unity Editor bakes its IP address into the built player during the build process. When you start the player, it attempts to connect to the Profiler in the Editor located at the baked IP address. |
| **Deep Profiling Support** | Unity performs Deep Profiling when the built Player starts, which means that the Profiler profiles every part of your code, and not just code timings explicitly wrapped in Profiler markers. This is useful to get profiling information on your application’s start up times, however, this adds a small amount of overhead to your build. |

## Additional resources

- Connecting the Profiler to a data source
- Build Profiles
- Instrument all function calls
- Profiler markers introduction
