<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-external-tools.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# External Tools preferences reference

Use the **External Tools** preferences to set up external applications for scripting, working with images, and source control.

To open the preferences, go to **Edit > Preferences > External Tools** (macOS: **Unity > Settings > External Tools**).

| **Property** | **Function** |
| --- | --- |
| **External Script Editor** | Choose the application Unity uses to open script files. Unity automatically passes the correct arguments to script editors it has built-in support for. Unity has built-in support for Visual Studio Community, Visual Studio Code (VSCode) and JetBrains Rider. The **Open by file extension** option uses your device’s default application for the relevant file type when you open a file. If no default application is available, your device opens a window that prompts you to choose an application to use to open the file. |
| **Generate .csproj files** | Select which items Unity should generate `.csproj` files for. These files contain descriptive data or metadata in an XML format. This data might include versioning information, platform requirements, build files, or database settings.  When these files are present, code editors can use the data they contain to provide useful features like highlighting potential compilation errors. You can enable generation for the following items: **Embedded packages** **Local packages** **Registry packages** **Git packages** **Built-in packages** **Local tarball** **Packages from unknown sources** **Player projects** |
| **Image application** | Choose which application you want Unity to use to open image files. |
| **Revision Control Diff/Merge** | Choose which application you want Unity to use to resolve merge conflicts and view file differences in your source control repository. Unity detects these tools in their default installation locations.  For more information, refer to Diff tool support. |

## Additional resources

- Project Settings reference
- Project configuration
