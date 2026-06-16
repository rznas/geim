<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/accelerator-monitor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Monitor Unity Accelerator

Unity **Accelerator** has a built-in dashboard to monitor and configure changes.

The URL to access your dashboard is `http://hostname[:port]/dashboard` where `hostname:port` is the hostname/IP and port number of the Unity Accelerator you have installed. Note that the default port is `80` for http and `443` for https but you can change this after the installation.

Each Unity Accelerator hosts [Prometheus metric reports](https://prometheus.io/) as `http://hostname[:port]/metrics`, which you can query from the local network. For a full list of metrics monitoring, refer to Unity Accelerator Prometheus metrics reference. The full configuration of Unity Accelerator is available through its unity-accelerator.cfg file.

## Additional resources

- Unity Accelerator Prometheus metrics reference
- Configure Unity Accelerator in the Editor
