<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/embedded-platforms-standard-logoutput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Standard log output overview

The log output is stored in a file or can be displayed in the console. When the Unity Player initializes, any initial errors are logged in the console through [`stderr`](https://learn.microsoft.com/en-us/cpp/c-runtime-library/stdin-stdout-stderr?view=msvc-170). If any initialization error occurs, Unity Player stops running with an error exit code.

By default, Unity writes standard log output into a log file located in your current home directory at `~/.config/unity3d/CompanyName/ProductName/Player.log`. You can customize this path via the Player Data Path setting (menu: **Player Settings** > **Other Settings** > **Configuration** > **Player Data path)** or using the command line arguments.

If the standard log output fails to initialize, Unity writes the log output to the console.

## Additional resources

- Configure a logging plug-in
- Command line arguments for logging
