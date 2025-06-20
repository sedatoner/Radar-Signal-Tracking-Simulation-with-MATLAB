# Radar-Signal-Tracking-Simulation-with-MATLAB
# Radar Signal Tracking Simulation with MATLAB

This project simulates a radar signal tracking scenario, including target motion, signal transmission and return, and estimation of target distance over time.

## Features

- Simulated radar pulse reflection from a moving target
- Noisy signal modeling
- Cross-correlation-based delay estimation
- Real-time tracking of target distance

## How to Run

1. Open `radar_tracking.m` in MATLAB
2. Run the script
3. Two plots will appear:
   - The noisy received radar signal
   - The true and estimated target distance

## Parameters

- Sampling frequency: 1 kHz
- Target speed: 30 m/s
- Signal frequency: 50 Hz
- Propagation speed: 300 m/s

## Sample Output

- Blue line: True target distance
- Red dashed line: Estimated target distance (based on delay)

## License

MIT
