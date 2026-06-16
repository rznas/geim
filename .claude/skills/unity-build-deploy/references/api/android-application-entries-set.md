<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-application-entries-set.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Set the application entry point for your Android application

You control the application entry points through Android Player Settings. You can set multiple application entry points for **development builds** of your application which helps you to quickly compare functionality and performance between different application entry points. However, you must only select one application entry point for release builds that you intend to publish. If you select more than one, Unity displays a warning message.

To set which application entry point/s to use for your application:

1. Open Android Player Settings.
2. Go to **Other Settings** > **Configuration** > **Application Entry Point**.
3. In the **Application Entry Point** section, select which application entry points you want to use.

If you select more than one application entry point and build or export your application, Unity generates multiple `activity` entries in the Android App Manifest; one for each application entry point. If you open the project in Android Studio, you can specify which application entry point you want to run/debug in the [Run/Debug Configurations dialog](https://developer.android.com/studio/run/rundebugconfig#opening). If you install the built application on a device, there will be as many application icons as there are application entry points.

## Additional resources

- The Activity application entry point
- The GameActivity application entry point
