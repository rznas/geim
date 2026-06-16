<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-application-entries-game-activity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# The GameActivity application entry point

The [GameActivity](https://developer.android.com/games/agdk/game-activity) application entry point is an extension of the Activity application entry point and is the default application entry point for new Unity projects. It provides more control over the interaction between Android and your application than the Activity application entry point. To provide this control, the GameActivity library does the following:

- It doesn’t directly map to a specific Unity version which means you can update the GameActivity library separately to Unity.
- It uses a customizable [glue library](https://developer.android.com/reference/games/game-activity/group/android-native-app-glue) as a bridge between itself and Unity. This means you can modify the bridge code to make changes and extend functionality.

| **Topic** | **Description** |
| --- | --- |
| GameActivity requirements and compatibility | Understand the system requirements and feature compatibility of the GameActivity application entry point. |
| Modify GameActivity bridge code | Make changes to the code that connects the Unity runtime to the GameActivity library. |
| Update the GameActivity library | Change which version of the GameActivity library your application uses. |

## Additional resources

- Set the application entry point for your Android application
