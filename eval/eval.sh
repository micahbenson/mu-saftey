#EXAMPLE
'''
# Run benchmark
helm-run --run-entries mmlu:subject=philosophy,model=openai/gpt2 --suite my-suite --max-eval-instances 10

# Summarize benchmark results
helm-summarize --suite my-suite

# Start a web server to display benchmark results
helm-server --suite my-suite
'''

#Commands
'''
use helm-run to execute the runs
--run-entries specifies the run entries from the desired runs.
--suite specifies a subdirectory under the output directory in which all the output will be placed.
--max-eval-instances limits evaluation to only N instances (i.e. items) from the benchmark, using a randomly shuffled order of instances.
The environment directory is prod_env/ by default and can be set using --local-path. Credentials for making API calls should be added to a credentials.conf file in this directory.
The output directory is benchmark_output/ by default and can be set using --output-path.
helm-summarize --suite my-suite will summarize the statistics across runs

Finally, the helm-server command launches a web server to visualize the output files of helm-run and helm-benchmark. Run:
helm-server --suite my-suite

## Getting Started

The following is an example of evaluating [Stable Diffusion v1.4](https://huggingface.co/CompVis/stable-diffusion-v1-4) on the [MS-COCO scenario](https://github.com/stanford-crfm/heim/blob/main/src/helm/benchmark/scenarios/image_generation/mscoco_scenario.py) using 10 instances.

helm-run --run-entries mscoco:model=huggingface/stable-diffusion-v1-4 --suite my-heim-suite --max-eval-instances 1
'''

