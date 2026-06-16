<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SplashScreenLogo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A single logo that is shown during the Splash Screen. Controls the Sprite that is displayed and its duration.

### Static Properties

| Property | Description |
| --- | --- |
| unityLogo | The Unity logo Sprite. |

### Properties

| Property | Description |
| --- | --- |
| duration | The total time in seconds for which the logo is shown. The minimum duration is 2 seconds. |
| logo | The Sprite that is shown during this logo. If this is null, then no logo will be displayed for the duration. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Creates a new Splash Screen logo with the provided duration and logo Sprite. |
| CreateWithUnityLogo | Creates a new Splash Screen logo with the provided duration and the unity logo. |
