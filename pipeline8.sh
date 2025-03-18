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

# "textmapworld_graphreasoning Unsloth-meta-llama-3.1-4bit-plain"
# "textmapworld_graphreasoning llama3.1-8B-sft-e1-DFINAL"
"textmapworld_graphreasoning llama3.1-8B-sft-e1-DFINAL_1.7K-steps"
"textmapworld_graphreasoning llama3.1-8B-sft-e1-DFINAL_1.1K-steps"
# "textmapworld_graphreasoning llama3.1-sft-e1-_E1_D40005"


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