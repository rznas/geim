<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CacheServerValidationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the accelerate server validation mode.

Use this enum with EditorSettings.cacheServerValidationMode to select the Accelerator server validation mode for the project. Used in conjunction with the Accelerator server Accelerator server settings ProtobufBlobHashRequired ProtobufBlobHashValidateGets and ProtobufBlobHashValidatePuts.

### Properties

| Property | Description |
| --- | --- |
| Disabled | Disable validation for the cache server. |
| UploadOnly | Calculate content hashes for uploaded artifacts and send them to the Accelerator for validation. |
| Enabled | Calculate and upload hashes. Validate Accelerator-provided hashes during downloads. |
| Required | Calculate and uploaded content hashes to the Accelerator. Require Accelerator-provided hashes for download validation. |
