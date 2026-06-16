<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-analysis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Analysis preferences reference

The **Analysis** preferences define settings for the Profiler, Project Auditor, and build history. To open the preferences, go to **Edit > Preferences > Analysis** (macOS: **Unity > Settings > Analysis**).

## Profiler

Contains settings for the Profiler window.

| **Setting** | **Description** |
| --- | --- |
| **Profiler Capture Storage Path** | Set the default folder where Unity saves Profiler captures. |
| **Frame count** | Set the maximum number of frames for the Profiler to capture. You can set this number between 600 and 4,000. A higher number of loaded frames increases the memory usage of the Unity Editor. |
| **Automatic memory management** | Automatically manage Profiler memory usage. When the system memory usage is at a critical level and the Profiler uses more than 75% of the Editor memory, Unity discards data until the system memory usage is back to a normal state, or the Profiler uses less than 25% of Editor memory. |
| **Show stats for current frame** | Display annotations on the frame indicator when you select **Current frame**. By default, when you select the **Current Frame** button, the frame indicator line doesn’t have annotations with the stats for the current frame. This is because the stats annotations might make it difficult to view data in real-time. |
| **Default recording state** | Select the recording state to open the Profiler in. Choose from the following options:   **Remember**: Remembers whether you have enabled or disabled the **Record** button during your session and keeps it at its last state next time you open the Profiler window.  **Enabled**: Keeps the **Record** button enabled between sessions.  **Disabled**: Disables the **Record** button between sessions, regardless of whether you changed its state during your profiling session. |
| **Default editor target mode** | Select the default mode for the Target Selection dropdown. Choose from either **Play Mode** or **Edit Mode**. |
| **Custom connection ID** | Set the connection name displayed in the Target Selection dropdown of the Profiler Window or Console Window for the device that’s running your application. |
| **Target **Frames Per Second**** (Highlights Module) | Set the target frames per second that the Highlights Profiler module uses. The Highlights Profiler module flags any frames that exceed the budget for this target frame rate. |
| **Override default screenshot frame interval** | Enable to override the default screenshot capture rate of 15 frames. |
| **Rate at which Profiler captures screenshots** | Set the frame interval to capture a screenshot. Setting this value to 0 disables screenshot captures. |

## Project Auditor

Contains settings for the Project Auditor window.

### Analysis

Configure how Project Auditor performs analysis of your project.

| **Setting** | **Description** |
| --- | --- |
| **Project Areas** | Select the Project Areas of the project to include in the project analysis. Set to **All** by default. |
| **Platform** | Specify the target platform for analysis from a list of all the currently supported platform modules included in the installed Editor. By default, Project Auditor uses the active build target. |
| **Code Analysis Areas** | Select which code Project Auditor includes when it analyzes **Code** issues. You can combine multiple options. By default, **Player**, **Editor**, and **Development Build** are enabled. The options are as follows:  **None**: Disable all code analysis.  **All**: Enable every code analysis flag.  **Player**: Include Player script assemblies for the selected analysis platform and compile them for analysis.  **Editor**: Include Editor script assemblies such as custom Editor tools and Editor assemblies from packages.  **Development Build**: When combined with **Player**, compile Player assemblies with development options so that code inside `#if DEVELOPMENT_BUILD` is included.  **Tests**: Include test assemblies when **Player** or **Editor** are enabled.  **Packages**: Include package code including files under `Library/PackageCache` in code analysis. |
| **Use Roslyn Analyzers** | Enable Roslyn analyzers, including one that reports issues impacting domain reload times. Enabling this setting might slow down the code compilation step of the analysis process. |
| **Log timing information** | Enable to log information to the Console about how long each analyzer took to run. |

### Build

Options to configure how Project Auditor interacts with the build process in your project.

| **Setting** | **Description** |
| --- | --- |
| **Log number of issues after Build** | Enable to log the number of issues that Project Auditor finds to the Console. |
| **Log Issues as Errors** | Only available if the **Log number of issues after Build** setting is enabled. Enable to log any issues that Project Auditor finds as errors. |

### Report

Configure how Project Auditor handles the reports it generates.

| **Setting** | **Description** |
| --- | --- |
| **Prettify saved .projectauditor files** | Format project reports to make them easier to read. Disable this setting to reduce the file size of reports. |

## Additional resources

- Project Settings reference
- Profiler introduction
- Project Auditor introduction
