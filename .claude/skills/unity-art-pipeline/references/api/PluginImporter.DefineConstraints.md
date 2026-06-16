<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PluginImporter.DefineConstraints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to specify a list of #define directives which controls whether your plug-in should be included.

You can set this property on each plug-in to control whether it should or shouldn't be included in your build according to the currently defined define directives.

By specifying the names of one or more #define directives in an array in this property on your plug-in, you can specify that your plug-in should only be included in the build when your project defines one of those #define directives.

Each plug-in in your project can have its own unique array of define constraints. This way, you can have different plug-ins included or excluded when you publish different types of builds, by changing which #define directives are set when you build.

You can use the "!" character to specify that a plug-in should be included only when a certain #define directive is **not** set in the currently defined define directives. For example, including "!ExampleDefine" in the list of define constraints means that the plug-in will not be included if "ExampleDefine" is set in the project's define directives.

Note: There is a similar feature which allows you to conditionally control which script assemblies are included. For more information, see the Script Assemblies Manual Page.
