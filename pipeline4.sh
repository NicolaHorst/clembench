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
  "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_planning_easy"
  # "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_basic_easy_invlimittwo"
  # "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_planning_easy_invlimittwo"

# "llama3.1-8B-sft-e1-DFINAL_1.1K-steps"
# "llama3.1-8B-sft-e1-DFINAL_1.7K-steps"
# "guesswhat Unsloth-meta-llama-3.1-4bit-plain"
# "referencegame Unsloth-meta-llama-3.1-4bit-plain"
# "matchit_ascii Unsloth-meta-llama-3.1-4bit-plain"
# "guesswhat llama3.1-8B-sft-e1-DFINAL"
# "referencegame llama3.1-8B-sft-e1-DFINAL"
# "matchit_ascii llama3.1-8B-sft-e1-DFINAL"
#"guesswhat llama3.1-8B-sft-e1-DFINAL_1.7K-steps" # lief nicht????
#"referencegame llama3.1-8B-sft-e1-DFINAL_1.7K-steps" # läuft?????
#"matchit_ascii llama3.1-8B-sft-e1-DFINAL_1.7K-steps"
#"guesswhat llama3.1-8B-sft-e1-DFINAL_1.1K-steps"
#"referencegame llama3.1-8B-sft-e1-DFINAL_1.1K-steps"
#"matchit_ascii llama3.1-8B-sft-e1-DFINAL_1.1K-steps"
# "guesswhat llama3.1-sft-e1-_E1_D40005"
# "referencegame llama3.1-sft-e1-_E1_D40005"
# "matchit_ascii llama3.1-sft-e1-_E1_D40005"

    

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