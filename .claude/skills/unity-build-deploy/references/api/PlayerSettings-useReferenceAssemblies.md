<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-useReferenceAssemblies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set to true to make Unity use Roslyn reference assemblies when compiling scripts. Enabled by default.

By default, Unity uses Roslyn reference assemblies to compile scripts in the Editor. This allows Unity to skip compilation of referenced assemblies if their metadata has not changed since the last compilation. As a result, compilation and iteration times are faster when developing in the Editor. If you disable this setting, when a script is modified, Unity recompiles all referenced assemblies regardless of whether the assembly metadata has changed.

You should only disable this property if you are having issues or crashes with script compilation in the Editor
