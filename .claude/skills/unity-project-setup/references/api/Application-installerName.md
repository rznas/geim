<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-installerName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the name of the store or package that installed the application (Read Only).

**iOS**: Returns `Apple Store`.

**Android**: Returns the package name of the app that installed the application (for example, `com.android.vending` for Google Play Store). This is not a localized or human-readable store name. The value might be empty or `null` if Unity can't determine the installer (for example, side-loaded installs).

**Other** **platforms**: Returns an empty string.
