<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.CertificateHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Responsible for rejecting or accepting certificates received on https requests.

**Note**: Custom certificate validation is currently implemented for Android, iOS, tvOS, visionOS, and desktop platforms only. To trust certificates on iOS, tvOS, and visionOS platforms, enable arbitrary loads either by enabling unsecured HTTP in Player Settings or explicitly in Info.plist file. For more information, refer to [Apple documentation](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapptransportsecurity/nsallowsarbitraryloads?language=objc).

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Signals that this [CertificateHandler] is no longer being used, and should clean up any resources it is using. |

### Protected Methods

| Method | Description |
| --- | --- |
| ValidateCertificate | Callback, invoked for each leaf certificate sent by the remote server. |
