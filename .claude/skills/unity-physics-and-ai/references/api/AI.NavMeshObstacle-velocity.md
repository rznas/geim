<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshObstacle-velocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Velocity at which the obstacle moves around the NavMesh.

```csharp
// Name this file (ManualObstacleVelocityUpdater.cs) to match the class name.
                        using System;
                        using UnityEngine;
                        using UnityEngine.AI;                        /// <summary>
                        /// Update the current GameObject's NavMesh Obstacle velocity according to its position changes.
                        /// Useful when the position of an object is controlled by script.
                        /// </summary>
                        public class ManualObstacleVelocityUpdater : MonoBehaviour
                        {
                            NavMeshObstacle m_Obstacle;
                            Vector3 m_LastPosition;                            void Start()
                            { 
                                m_Obstacle = GetComponent<NavMeshObstacle>(); 
                                m_LastPosition = transform.position; 
                            }                            void Update()
                            {
                                var deltaTime = Time.deltaTime;
                                if (m_Obstacle && deltaTime > Mathf.Epsilon)
                                { 
                                    // Compute this frame's velocity 
                                    var newPosition = transform.position; 
                                    var velocity = (newPosition - m_LastPosition) / deltaTime; 
                                    m_Obstacle.velocity = velocity; 
                                    
                                    // Keep track of the last considered position 
                                    m_LastPosition = newPosition; 
                                }
                            }
                        }
```
