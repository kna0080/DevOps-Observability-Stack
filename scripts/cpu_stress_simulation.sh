#!/bin/bash
# High-load execution script to validate metric visualization responsiveness

echo "Launching floating-point thread loops to stress infrastructure kernels..."
# Spin up 4 persistent background calculation processes
for i in {1..4}; do
   yes > /dev/null &
done

echo "WSL2 Subsystem kernel stress testing active. Monitor Grafana Dashboard (Port 3000)."
echo "Press [ENTER] to terminate the simulation loop threads."
read

# Clean up baseline load threads
killall yes
echo "Simulation ended. Systems returning to baseline operations."
