<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-genuine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns false if application is altered in any way after it was built.

Otherwise returns true.

**Note**: Use Application.genuineCheckAvailable along with `Application.genuine` to verify app integrity. Accessing the `Application.genuine` property is a resource-intensive operation, so do not call it during frame updates or other time-critical code.

**Android**: Returns false if the package name set in project settings mismatches with package name returned at runtime.

You can use this as an anti-piracy check because it checks if the application was altered after being built. Refer to iOS Scripting and Android mobile scripting for more information.
