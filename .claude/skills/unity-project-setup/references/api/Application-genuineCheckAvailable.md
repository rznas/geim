<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-genuineCheckAvailable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if application integrity can be confirmed.

Otherwise returns false.

**Note**: Use `Application.genuineCheckAvailable` along with Application.genuine to verify app integrity. Accessing the Application.genuine property is a resource-intensive operation, so do not call it during frame updates or other time-critical code.

This property is only available on Android and iOS platforms. You can use this as part of an anti-piracy check. Refer to iOS Scripting and Android mobile scripting for more information.
