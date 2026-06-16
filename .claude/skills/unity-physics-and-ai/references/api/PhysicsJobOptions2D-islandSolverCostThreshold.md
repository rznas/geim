<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsJobOptions2D-islandSolverCostThreshold.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimum threshold cost of all bodies, contacts and joints in an island during discrete island solving.

The discrete island solver generates "islands", which are bodies connected together by contacts. These contact islands are solved together as they all potentially affect each other when moving. The first stage is generating the contact islands. When a contact island has been created, it can then be evaluated in a job. However, executing lots of small contact islands each as a job can lead to lots of jobs, and can be very inefficient. To reduce the number of contact islands processed by each job, each job island has a cost associated with it. A job island's cost is automatically calculated by summing the cost of the island's bodies, contacts and joints. Each of these has its own scaling property, islandSolverBodyCostScale, islandSolverContactCostScale and islandSolverJointCostScale respectively. The island is only processed by a job if the total cost of the island is above the islandSolverCostThreshold.

Increasing the cost threshold will increase the number of islands solved in each job. Depending on the number and size of contact islands, this allows you to control the efficiency of discrete island solving.
