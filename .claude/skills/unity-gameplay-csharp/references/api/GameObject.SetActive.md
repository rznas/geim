<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.SetActive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The active state to set, where `true` sets the GameObject to active and `false` sets it to inactive. |

### Description

Activates or deactivates the GameObject locally, according to the value of the supplied parameter.

`SetActive` only sets the local state of the GameObject, represented by the value of GameObject.activeSelf. Changing the value of GameObject.activeSelf has no effect on the value of GameObject.activeInHierarchy if `activeInHierarchy` is `false` because of an inactive parent object.

Deactivating a GameObject disables each component, including attached renderers, colliders, rigidbodies, and scripts. For example, Unity will no longer call MonoBehaviour.Update on a script attached to a deactivated GameObject. Deactivating a GameObject also stops all coroutines attached to it.

**Note:** If the call to `SetActive` changes the value of GameObject.activeInHierarchy, this triggers MonoBehaviour.OnEnable or MonoBehaviour.OnDisable on all attached MonoBehaviour scripts.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    private GameObject[] cubes = new GameObject[10];
    public float timer, interval = 2f;    void Start()
    {
        Vector3 pos = new Vector3(-5, 0, 0);        for (int i = 0; i < 10; i++)
        {
            cubes[i] = GameObject.CreatePrimitive(PrimitiveType.Cube);
            cubes[i].transform.position = pos;
            cubes[i].name = "Cube_" + i;
            pos.x++;
        }
    }    void Update()
    {
        timer += Time.deltaTime;
        if (timer >= interval)
        {
            for (int i = 0; i < 10; i++)
            {
                int randomValue = Random.Range(0, 2);
                if (randomValue == 0)
                {
                    cubes[i].SetActive(false);
                }
                else  cubes[i].SetActive(true);
            }
            timer = 0;
        }
    }
}
```

Additional resources: GameObject.activeSelf, GameObject.SetGameObjectsActive
