<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SplashScreen.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides an interface to the Unity splash screen.

### Static Properties

| Property | Description |
| --- | --- |
| isFinished | Returns true once the splash screen has finished. This is once all logos have been shown for their specified duration. |

### Static Methods

| Method | Description |
| --- | --- |
| Begin | Initializes the splash screen so it is ready to begin drawing. Call this before you start calling SplashScreen.Draw. Internally this function resets the timer and prepares the logos for drawing. |
| Draw | Immediately draws the splash screen. Ensure you have called SplashScreen.Begin before you start calling this. |
| Stop | Stop the SplashScreen rendering. |
