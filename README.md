# n8n Setup and Local Instance

This repository provides instructions and automation scripts to clone, set up, build, and run [n8n](https://github.com/n8n-io/n8n.git) in a local development environment.

## Requirements
- **Node.js**: `>= 24.0.0`
- **pnpm**: `>= 12.4.2`
- **Build Tools**: `build-essential`, `python`

## Automated Setup
To clone, configure, build, and run n8n, run:
```bash
./setup-n8n.sh
```

## Running Instance
Once built and running, n8n is accessible at:
- **Port**: `5678` (e.g. `http://localhost:5678`)
- **Health check**: `http://localhost:5678/healthz`
