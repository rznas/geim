<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug-developerConsoleEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to enable or disable the developer console.

The developer console is a window that can appear when a development build of your project is running. It is similar to the Console window in the Editor, but appears at runtime. Enabling this property does not immediately make the developer console appear, instead it appears when the first error or assertion is logged. This property is enabled by default in development builds.
 
 Disabling this property when the developer console is open clears the contents of the developer console and hides it. You can check whether the developer console is currently visible, and hide or show it without clearing its contents, by using Debug.developerConsoleVisible.
