<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.MultipartFormDataSection-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | Data payload of this section. |

### Description

Raw data section, unnamed and no `Content-Type` header.

Will not include either a filename or a `Content-Type` section header.

### Parameters

| Parameter | Description |
| --- | --- |
| name | Section name. |
| data | Data payload of this section. |

### Description

Raw data section with a section name, no `Content-Type` header.

Identical to the prior constructor, but with a section name included.

### Parameters

| Parameter | Description |
| --- | --- |
| name | Section name. |
| data | Data payload of this section. |
| contentType | The value for this section's `Content-Type` header. |

### Description

A raw data section with a section name and a `Content-Type` header.

### Parameters

| Parameter | Description |
| --- | --- |
| name | Section name. |
| data | String data payload for this section. |
| contentType | The value for this section's `Content-Type` header. |
| encoding | An encoding to marshal `data` to or from raw bytes. |

### Description

A named raw data section whose payload is derived from a string, with a `Content-Type` header.

`data` will be encoded into raw bytes using `encoding`.

### Parameters

| Parameter | Description |
| --- | --- |
| name | Section name. |
| data | String data payload for this section. |
| contentType | The value for this section's `Content-Type` header. |

### Description

A named raw data section whose payload is derived from a UTF8 string, with a `Content-Type` header.

For UTF-8 strings with custom `Content-Type` headers, use this constructor. The data is returned in UTF-8 encoding and converted to raw bytes appropriately.

### Parameters

| Parameter | Description |
| --- | --- |
| name | Section name. |
| data | String data payload for this section. |

### Description

A names raw data section whose payload is derived from a UTF8 string, with a default `Content-Type`.

For UTF8 strings, use this constructor. `data` will be assumed to be in UTF8 encoding and converted appropriately. The section will be assigned a `Content-Type` of `text/plain; encoding=utf8`.

### Parameters

| Parameter | Description |
| --- | --- |
| data | String data payload for this section. |

### Description

An anonymous raw data section whose payload is derived from a UTF8 string, with a default `Content-Type`.

Identical to the above, but without a section name.
