<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Licensing.LicensingUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use the Licensing Utility class to request user permissions. User permissions are referred to as entitlements, which are simple strings, ie. "com.unity.editor.ui".

### Static Methods

| Method | Description |
| --- | --- |
| HasEntitlement | Checks if the current user is entitled to a specific entitlement. |
| HasEntitlements | Checks if the current user is entitled to a list of entitlements. |
| HasEntitlementsExtended | Retrieves extended information about the license file and its contents, including custom data attached to individual entitlements. |
| InvokeLicenseUpdateCallbacks | Notifies all compononents that have been registered to act upon licensing changes. |
| UpdateLicense | Triggers an update to all available license types found on this machine. |
