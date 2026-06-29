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









-----------------------------------------------------

- Download the Ampere optimized models from Huggingface.
#### Here're the lists of Ampere optimized models using in this demo:
- deepseek-r1-distill-qwen-7b-Q8R16.gguf
- gemma-3-12b-it-Q8R16.gguf
- granite-8b-code-instruct-128k-Q8R16.gguf
- Llama-3.2-3B-Instruct-Q4_K_4.gguf
- Mistral-7B-Instruct-v0.3-Q8R16.gguf
- phi-4-Q8R16.gguf
- Qwen3-8B-Q8R16.gguf

#### --
- Place the models inside the models directory. (need to create the models directory)
- Run 'start_app.sh'. The script will pull the demo docker image from docker hub, setup the environments neccessary for this demo.
- Open the demo at http://< your_ip_address >:5050

