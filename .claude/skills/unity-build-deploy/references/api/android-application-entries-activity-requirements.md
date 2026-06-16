<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-application-entries-activity-requirements.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Activity requirements and compatibility

Activity was originally the only application entry point that Unity supported and because of this it’s very stable in the majority of scenarios and is compatible with the majority of Unity features.

## Plug-in compatibility

If you use Activity, your application player loop runs on a Java thread. This means that you can call Java APIs like [myLooper](https://developer.android.com/reference/android/os/Looper#myLooper()) from **plug-ins**.

## Choreographer

If you use Activity, Unity uses the [Java choreographer](https://developer.android.com/reference/android/view/Choreographer). This helps you to understand how frame synchronization occurs in your application.

## Additional resources

- The GameActivity application entry point
