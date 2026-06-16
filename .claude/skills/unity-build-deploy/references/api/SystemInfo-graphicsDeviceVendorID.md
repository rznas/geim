<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-graphicsDeviceVendorID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The identifier code of the graphics device vendor (Read Only).

This is the PCI vendor ID of the user's graphics card. This number uniquely identifies a particular graphics card maker. The number is the same across operating systems and driver versions.

Note that device IDs are only implemented on PC (Windows/Mac/Linux) platforms and Android when running Vulkan; on other platforms you'll have to do name-based detection if needed.

See [pci-ids.ucw.cz](http://pci-ids.ucw.cz/read/PC/) for a list of vendor IDs.

Additional resources: SystemInfo.graphicsDeviceID, SystemInfo.graphicsDeviceVendor.
