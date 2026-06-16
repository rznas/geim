<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.GetCurrentAnimatorClipInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerIndex | The layer index. |

### Returns

**AnimatorClipInfo[]** An array of all the AnimatorClipInfo in the current state.

### Description

Returns an array of all the AnimatorClipInfo in the current state of the given layer.

```csharp
//This script outputs the name and length of the Animation clip played at start-up.using UnityEngine;public class GetCurrentAnimatorClipInfoExample : MonoBehaviour
{
    Animator m_Animator;
    string m_ClipName;
    AnimatorClipInfo[] m_CurrentClipInfo;    float m_CurrentClipLength;    void Start()
    {
        //Get them_Animator, which you attach to the GameObject you intend to animate.
        m_Animator = gameObject.GetComponent<Animator>();
        //Fetch the current Animation clip information for the base layer
        m_CurrentClipInfo = this.m_Animator.GetCurrentAnimatorClipInfo(0);
        //Access the current length of the clip
        m_CurrentClipLength = m_CurrentClipInfo[0].clip.length;
        //Access the Animation clip name
        m_ClipName = m_CurrentClipInfo[0].clip.name;
    }    void OnGUI()
    {
        //Output the current Animation name and length to the screen
        GUI.Label(new Rect(0, 0, 200, 20),  "Clip Name : " + m_ClipName);
        GUI.Label(new Rect(0, 30, 200, 20),  "Clip Length : " + m_CurrentClipLength);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| layerIndex | The layer index. |
| clips | The list of AnimatorClipInfo to fill. |

### Description

Fills `clips` with the list of all the AnimatorClipInfo in the current state of the given layer.

Additional resources: GetCurrentAnimatorClipInfoCount.
