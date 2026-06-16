<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-network.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Diagnose network issues

Use the Unity Package Manager Diagnostics tool to help diagnose common network issues associated with Unity Package Manager. The Diagnostics tool runs some basic network tests and creates files that the Unity support team needs to diagnose common network problems. After you run the tool, you can share the results with the Unity support team who can better guide you in resolving those issues.

To diagnose network issues:

1. Run the Unity Package Manager Diagnostics tool by using either the Unity Package Manager Error dialog or by Manually running the script.
2. View the test results in the shell window. The tool output also lists the location of the `upm-diagnostic-report.txt` report and the `upm-diag.log` file that it created.
3. If you need help from the Unity support team, include `upm-diagnostic-report.txt` and `upm-diag.log` when you [submit a bug](https://unity3d.com/unity/qa/bug-reporting).

## Method 1: Use the Unity Package Manager Error dialog

When Unity tries to launch, it starts the Package Manager process before it loads the project. If it encounters a critical error with Package Manager, Unity displays the following error message:

To run the Diagnostics tool, click **Diagnose**. Unity closes and launches the Diagnostics tool in a new window.

## Method 2: Manually run the script

Locate the `RunUnityPackageManagerDiagnostics` script in the `Diagnostics` folder within the [installation folder for your Unity Editor](https://docs.unity.com/hub/add-editor#add-a-manually-downloaded-editor-to-the-hub):

| **Operating system:** | **Path to Diagnostics command line tool**: |
| --- | --- |
| Windows | `<path-to-unity-installation-folder>`  `\Unity`  `\Data`  `\Resources`  `\PackageManager`  `\Diagnostics`  `\RunUnityPackageManagerDiagnostics.bat` |
| macOS Linux | `<path-to-unity-installation-folder>`  `\Unity.app`  `\Contents`  `\Resources`  `\PackageManager`  `\Diagnostics`  `\RunUnityPackageManagerDiagnostics` |

To launch the tool, either:

- Run the script file from the command line.
- Double-click the script file in your file browser. **Note:** On macOS, you must right-click `Unity.app` and select **Show Package Contents** to access the contents of `Unity.app`.

## Sample output

## Additional resources

- Configuring your firewall
- Configuring your proxy server
