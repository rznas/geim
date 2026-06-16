<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.ScriptCompilerOptions.AnalyzerConfigPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores the path to the Roslyn global config file.

You can define a project-wide analyzer configuration in a file with the .globalconfig file extension. Use key-value pairs to configure the default behavior of all files in your project. If a file with this extension is present, Unity automatically detects it and stores the path in this property. Use this global config file in the same way as a ruleset file. Create a file named "Default.globalconfig" in your root asset folder to apply the configuration to all predefined assemblies and any assemblies that Unity builds with .asmdef files.

 You can override the options for some predefined Unity assemblies by creating a .globalconfig file in the root asset folder with the name [PredefinedAssemblyName].globalconfig. If a [PredefinedAssemblyName].globalconfig is present, the options specified in that file are used instead of the ones in the Default.globalconfig (if present).

 Only these .globalconfig files are permitted inside the root asset folder: - Default.globalconfig - Assembly-CSharp.globalconfig - Assembly-CSharp-firstpass.globalconfig - Assembly-CSharp-Editor.globalconfig - Assembly-CSharp-Editor-firstpass.globalconfig

 It is also possible to override the options for each assembly definition, by creating a .globalconfig file in the same folder as its .asmdef file. There are no name restrictions in this case, but it is a good practice to follow the rule [AssemblyDefinitionName].globalconfig. If a globalconfig file is present for assembly definition, the options specified in that file are used instead the ones in the Default.globalconfig (if present).

 If multiple keys with the same name are present in the same config file, Unity uses the last entry in the file for that key. Config files are not additive: you can't have a Default.globalconfig that sets some common value and has a subset for a specific assembly. If you add a global config override for PredefinedAssemblyName or an assembly definition, that file should contain all the keys-value pairs.
