<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.UserBuildSettings.DebugSymbols.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides settings to generate native symbols during the application build process.

The native symbols contain debug metadata to help troubleshoot the application crashes. The DebugSymbols properties allow you to specify the format of these symbol files and the level of debug metadata they contain.

You can choose to package symbols as a zip file, embed them directly into the app bundle, or use both methods as per your application requirement. You can also specify the debug information as a symbol table or with full debug information.

### Static Properties

| Property | Description |
| --- | --- |
| format | Specifies the format for the symbols package. |
| level | Specifies the type of debug metadata to include in the symbol files. |
