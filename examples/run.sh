#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_ghost_guard info
PYTHONPATH=src python -m gbt_ghost_guard check --payload '{}'
PYTHONPATH=src python -m gbt_ghost_guard run   --payload '{}'
