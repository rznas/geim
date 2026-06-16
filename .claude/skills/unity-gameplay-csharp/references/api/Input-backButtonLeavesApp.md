<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-backButtonLeavesApp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should **Back** button quit the application?

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Only usable on Android or Universal Windows Platform (UWP).

By default this property is set to false, which means you're responsible for responding to **Back** button. You can do this by calling Input.GetKey and passing KeyCode.Escape.

If you set this property to true, clicking the **Back** button: 
 * minimizes the application on Android. 
 * suspends the application on UWP.
