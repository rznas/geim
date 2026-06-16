<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A 64-bit mask, effectively 64 flags. The default enumerator will iterate all the bits that are set (1).

### Static Properties

| Property | Description |
| --- | --- |
| All | All 64 bits set (1) in the PhysicsMask. |
| None | No bits set in the PhysicsMask, effectively zero. |
| One | Bit #0 set (1) in the PhysicsMask. The remaining bits are reset (0). |

### Properties

| Property | Description |
| --- | --- |
| bitMask | A 64-bit mask, effectively 64 flags. |
| resetBits | Gets an enumerable group of bits that are currently reset (0). The bits are returned in ascending bit-index order. This uses ResetBitIterator. |
| setBits | Gets an enumerable group of bits that are currently set (1). The bits are returned in ascending bit-index order. This uses SetBitIterator. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsMask | Create a PhysicsMask by specifying multiple bits to set (1). |

### Public Methods

| Method | Description |
| --- | --- |
| AreAnyBitsSet | Checks if any of the provided PhysicsMask set bits are also set in this PhysicsMask. |
| AreBitsSet | Checks if all the provided PhysicsMask set bits are also set in this PhysicsMask. |
| IsBitSet | Is the specified bit set. |
| ResetBit | Reset (0) the specified bit. |
| SetBit | Set (1) the specified bit. |
| ToLayerMask | Convert the lower 32-bits of the 64-bit mask to the 32-bit UnityEngine.LayerMask. A UnityEngine.LayerMask is only 32-bits wide so the upper 32-bits of the PhysicsMask will be ignored. |
