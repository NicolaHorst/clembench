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

# "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_basic_easy"
# "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_planning_easy"
"adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_basic_easy_invlimittwo"
# "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_planning_easy_invlimittwo"

#"privateshared Unsloth-meta-llama-3.1-4bit-plain"
#"privateshared llama3.1-8B-sft-e1-DFINAL"
#"privateshared llama3.1-70B-sft-e1-DFINAL_1.7K-steps"
#"privateshared llama3.1-70B-sft-e1-DFINAL_1.1K-steps"
#"privateshared llama3.1-sft-e1-_E1_D40005"
    

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