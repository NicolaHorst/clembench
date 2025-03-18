#!/bin/bash
# Usage: ./pipeline_clembench.sh
# Preparation: ./setup.sh

export CUDA_VISIBLE_DEVICES=2
echo "CUDA devices=2"


echo
echo "==================================================="
echo "PIPELINE: Starting"
echo "==================================================="
echo
game_runs=(

"imagegame Unsloth-meta-llama-3.1-4bit-plain"
"taboo Unsloth-meta-llama-3.1-4bit-plain"
"imagegame llama3.1-8B-sft-e1-DFINAL"
"taboo llama3.1-8B-sft-e1-DFINAL"

"imagegame llama3.1-sft-e1-_E1_D40005"
"taboo llama3.1-sft-e1-_E1_D40005"


)
total_runs=${#game_runs[@]}
echo "Number of benchmark runs: $total_runs"
current_runs=1
for run_args in "${game_runs[@]}"; do
  echo "Run $current_runs of $total_runs: $run_args"
  echo $run_args
  bash -c "./run.sh ${run_args}"
  ((current_runs++))
done
echo "==================================================="
echo "PIPELINE: Finished"
echo "==================================================="