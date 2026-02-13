docker pull tinguyen2024/ampere_optimized_models_benchmark:v1.0
docker run -d \
    --name ampere-benchmark \
    -p 5050:5050 \
    -v $(pwd)/models:/app/models \
    -v $(pwd)/data:/app/data \
    -e N_THREADS=32 \
    --restart unless-stopped \
    tinguyen2024/ampere_optimized_models_benchmark:v1.0

