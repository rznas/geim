<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PluginImporter-isPreloaded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is a native plugin loaded during startup or on demand?

You can use this to ensure that a plugin is loaded early in the startup phase instead of on first use.

Plugins whose names are prefixed with one of the following strings are configured to be preloaded by default: AudioPlugin, libAudioPlugin, GfxPlugin, libGfxPlugin, ProfilerPlugin, libProfilerPlugin.

Note: Preloading is only supported for native plugins.
