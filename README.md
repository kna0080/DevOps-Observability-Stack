# Linux Infrastructure Observability Stack (Docker, Prometheus, Grafana)

## Technical Project Overview
This project establishes an enterprise-grade cloud-native observability stack. By deploying an isolated microservice monitoring architecture using containerized Linux utilities, this framework tracks host-level hardware telemetry, sets operational baselines, and models infrastructure capacity constraints under simulated application stress conditions.

## Core Competencies & Technologies
* **Infrastructure Layer:** Linux Containerization Core, Docker Core Engine, Docker Compose Engine.
* **Telemetry Core Engine:** Prometheus Open-Source Time-Series Database (TSDB).
* **Data Layer Visualization:** Grafana Analytics Studio Enterprise Dashboard Pipeline.
* **Host Telemetry Agent:** Prometheus Node Exporter Utility.
* **Operating Systems Infrastructure:** Linux VM Frameworks via Windows Subsystem for Linux (WSL2 Engine).

## Deployment Instructions
1. Clone the repository workspace layout onto your target host machine:
   ```bash
   git clone [https://github.com/kna0080/DevOps-Observability-Stack.git](https://github.com/kna0080/DevOps-Observability-Stack.git)
   cd DevOps-Observability-Stack
   ```
   
2. Orchestrate and launch the multi-container stack in detached processing mode using the  Docker Compose engine:
```bash
  docker-compose up -d
```

3. Verify running daemon task states and container port-forward configurations:
```bash
  docker ps
```

## Monitoring Pipeline Configuration & Dashboards

Prometheus Data Pipeline: Binds natively inside Grafana using the local bridge network DNS handle (http://prometheus:9090).

Visual Telemetry Ingestion: Leverages production-standard Linux systems monitoring matrix scheme Template ID: 1860 to parse host resource vectors.

## Stress Testing Simulation & Analytical Findings

### To validate telemetry precision, a sustained floating-point CPU calculation loop (yes > /dev/null &) was injected directly into the underlying Linux WSL2 kernel layer.
Performance Analysis Observations:

Telemetry Ingestion Latency: Because the scrape_interval parameters were tuned aggressively to 5s resolution limits, resource exhaustion anomalies registered on Grafana dashboard charts within 6 seconds of execution.

Data Collection Methodology: This project showcases a robust Pull-Based Metrics Model. Instead of nodes overwhelming centralized ingestion servers by pushing data packets outward, the core Prometheus server queries stateless client nodes directly on port 9100/metrics. This design effectively safeguards computing clusters from cascading failures during high-velocity processing storms.
