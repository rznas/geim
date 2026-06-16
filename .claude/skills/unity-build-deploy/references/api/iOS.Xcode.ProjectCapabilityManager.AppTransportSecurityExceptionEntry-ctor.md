<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.ProjectCapabilityManager.AppTransportSecurityExceptionEntry-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| domain | Sets the domain entry name. |
| enableIncludesSubdomains | Set as true to enable the [NSIncludesSubdomains](https://developer.apple.com/documentation/bundleresources/information_property_list/nsincludessubdomains) key. |
| enableExceptionAllowsInsecureHTTPLoads | Set as true to enable the [NSExceptionAllowsInsecureHTTPLoads](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionallowsinsecurehttploads) key. |
| exceptionMinimumTLSVersion | Sets the [NSExceptionMinimumTLSVersion](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionminimumtlsversion) for domain. |
| enableExceptionRequiresForwardSecrecy | Set as true to enable the [NSExceptionRequiresForwardSecrecy](https://developer.apple.com/documentation/bundleresources/information_property_list/nsexceptionrequiresforwardsecrecy) key. |

### Description

Represents which properties in the Info.plist are enabled for the domain entry.
