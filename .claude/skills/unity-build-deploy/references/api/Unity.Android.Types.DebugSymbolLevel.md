<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Types.DebugSymbolLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for specifying the type of debug metadata to include in debug symbol files.

You can either include a symbol table that translates active memory addresses into method names, or complete debugging information for in-depth debugging.

Additional resources: UserBuildSettings.DebugSymbols.level, [debugSymbolLevel](https://developer.android.com/reference/tools/gradle-api/7.3/com/android/build/api/dsl/Ndk#debugSymbolLevel())

### Properties

| Property | Description |
| --- | --- |
| None | Unity does not include native debug metadata in the application build. |
| SymbolTable | The generated debug symbol files include only symbol table section. |
| Full | The generated debug symbol files include detailed debugging information and symbol tables. |
