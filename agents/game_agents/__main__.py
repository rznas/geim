"""Entry point: `uv run game-agents-server` (or `python -m game_agents`).

Starts the FastAPI app with uvicorn. Host/port/reload come from env so n8n,
Docker, and local dev can all configure it without code changes.
"""

from __future__ import annotations

import os


def main() -> None:
    import uvicorn

    host = os.environ.get("GAME_AGENT_HOST", "127.0.0.1")
    port = int(os.environ.get("GAME_AGENT_PORT", "8787"))
    reload = os.environ.get("GAME_AGENT_RELOAD", "false").lower() == "true"

    uvicorn.run("game_agents.server:app", host=host, port=port, reload=reload)


if __name__ == "__main__":
    main()
