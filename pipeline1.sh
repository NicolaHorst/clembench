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
  "guesswhat SFT-merged_fp16_DFINAL_1.1K-steps"
  "imagegame SFT-merged_fp16_DFINAL_1.1K-steps"
  "referencegame meta-llama-3.1_KTO_aborted_same_family_model_final"
  "taboo meta-llama-3.1_KTO_aborted_same_family_model_final"
  "textmapworld meta-llama-3.1_KTO_aborted_same_family_model_final"
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