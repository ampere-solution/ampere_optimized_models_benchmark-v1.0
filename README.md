# AI Model Explorers
## User Interface - Web Dashboard
- A single page flask dashboard with three main area:
    - Configuration panel which drives the benchmark:
    - Start/Stop buttons.
    - Model dropdown with a model information readout.
    - Prompt text area.
    - Preset: Custom, Long, Medium, Short.
- Live Log panel which streams logs from the running benchmark with a Clear button.
- Results Section - hidden until a run completes
  - Model Information.
  - Metrics summary.
  - Per-Run  Breakdown table - gen token/s, prompt token/s, TTFT, etc…
<img width="2091" height="1094" alt="image-20260504-170412.png" src="image-20260504-170412.png" />

## Architectural Diagram
The demo is a GGUF model explorer platform built around a Flask server that drives Ampere optimized llama.cpp inference and streams live results to the browser over SSE.  The architecture diagram captures it in the logical layer below.
<img width="2091" height="1094" alt="image-20260504-173027.png" src="image-20260504-173027.png" />

## What This Demo Shows
This is a web-based benchmarking platform for testing the performance of AI language models running locally on Ampere processors.

What it does:

Place GGUF model files (quantized LLMs like Llama 3) in the ./models/ folder, start the app, and use a browser UI to:                  
- Select a model from a dropdown (auto-detected from your local files)
- Enter a prompt (or pick a preset: short/medium/long)
- Configure parameters (max tokens, temperature, threads, number of runs)
- Click Start and watch the model generate text in real-time with markdown rendering

What it measures:

After each run, it reports these performance metrics:
<img width="2091" height="1094" alt="table.png" src="table.png" />
