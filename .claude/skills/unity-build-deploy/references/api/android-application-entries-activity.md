<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-application-entries-activity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# The Activity application entry point

[Activity](https://developer.android.com/reference/android/app/Activity) was originally the only application entry point that Unity supported and because of this it’s very stable in the majority of scenarios.

This application entry point is appropriate to use in the following scenarios:

- Your project uses plug-ins that must run on a Java thread. For more information, refer to Plug-in compatibility.
- You are upgrading an old project that already uses the Activity application entry point.

If the above scenarios don’t apply to your project, the GameActivity application entry point is a more appropriate application entry point. Among other benefits, Unity’s implementation of GameActivity gives you more control over the interaction between Android and your application. For more information, refer to GameActivity application entry point.

| **Topic** | **Description** |
| --- | --- |
| Activity requirements and compatibility | Understand the system requirements and feature compatibility of the Activity application entry point. |
| Extend the default Unity activity | Override basic interactions between the Android operating system and the Unity Android application. |

## Additional resources

- Set the application entry point for your Android application
