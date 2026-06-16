<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-application-entries-game-activity-update-library.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Update the GameActivity library

The GameActivity application entry point is implemented as a library separate from the Unity Editor which means that you can update the library independently. This is useful if Google provides bug fixes that your project requires because you can acquire the fixes via a GameActivity library version update.

**Note**: By default, Unity uses a specific GameActivity library version for each Unity version. For the recommended GameActivity library version per Unity version, refer to GameActivity requirements and compatibility. Unity doesn’t test all combinations of Unity version and GameActivity library version. Changing the GameActivity library version, particularly across major versions, can cause incompatibilities with the Unity runtime. Change the version only if you have a critical requirement that the recommended version doesn’t meet and test your application thoroughly after any change.

To update the GameActivity library version, change the value of the `androidx.games:games-activity` dependency in `build.gradle`. For information on the possible methods to do this, refer to Modify Gradle project files.

**Note**: Make sure that the other AndroidX dependencies support the GameActivity version that you want to use. If they don’t, you must update them too. For more information, refer to [Declaring dependencies](https://developer.android.com/jetpack/androidx/releases/games#declaring-dependencies).

## Additional resources

- Modify GameActivity bridge code
