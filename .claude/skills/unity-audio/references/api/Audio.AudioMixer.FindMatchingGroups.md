<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioMixer.FindMatchingGroups.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| subPath | Path sub-strings to match with. |

### Returns

**AudioMixerGroup[]** Groups in the mixer whose paths match the specified search path.

### Description

Connected groups in the mixer form a path from the mixer's master group to the leaves. This path has the format **Master Group/Child of Master Group/Grandchild of Master Group**, and so on. For example, in the hierarchy below, the group DROPS has the path **Master/WATER/DROPS**. To return only the group called **DROPS**, enter **DROPS**. The substring **Master/AMBIENCE** returns three groups, **AMBIENCE/CROWD**, **AMBIENCE/ROAD**, and **AMBIENCE**. The substring **/R** would return both **ROAD** and **RIVER**.

```csharp
using UnityEngine;
using UnityEngine.Audio;public class FindMatchingMixerGroups : MonoBehaviour
{
    public AudioMixer mixer;    static void PrintGroups(AudioMixerGroup[] groups)
    {
        Debug.Log("---- MIXER GROUPS ----");
        foreach (var group in groups)
        {
            Debug.Log(group);
        }
    }    void Start()
    {
        // Will find all groups with a path containing the substring "DROPS"
        // In the example, this is a single group defined by the path Master/WATER/DROPS.
        var groups = mixer.FindMatchingGroups("DROPS");
        PrintGroups(groups);        // Will find all groups with a path containing the substring "Master/AMBIENCE"
        // In the below example, this matches three groups "Master/AMBIENCE/CROWD", "Master/AMBIENCE/ROAD", and "Master/AMBIENCE".
        groups = mixer.FindMatchingGroups("Master/AMBIENCE");
        PrintGroups(groups);
    }
}
```
