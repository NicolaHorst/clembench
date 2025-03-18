#!/bin/bash
# Usage: ./pipeline_clembench.sh
# Preparation: ./setup.sh

export CUDA_VISIBLE_DEVICES=2


echo
echo "==================================================="
echo "PIPELINE: Starting"
echo "==================================================="
echo
game_runs=(
"wordle meta-llama-3.1_KTO_aborted_same_family_model_final"
"wordle_withclue meta-llama-3.1_KTO_aborted_same_family_model_final"
"wordle_withcritic meta-llama-3.1_KTO_aborted_same_family_model_final"
"matchit_ascii meta-llama-3.1_KTO_aborted_same_family_model_final"
"textmapworld_graphreasoning meta-llama-3.1_KTO_aborted_same_family_model_final"
"textmapworld_specificroom meta-llama-3.1_KTO_aborted_same_family_model_final"


# "adventuregame Unsloth-meta-llama-3.1-4bit-plain home_deliver_three_basic_easy"
# "adventuregame Unsloth-meta-llama-3.1-4bit-plain home_deliver_three_planning_easy"
# "adventuregame Unsloth-meta-llama-3.1-4bit-plain home_deliver_three_basic_easy_invlimittwo"
# "adventuregame Unsloth-meta-llama-3.1-4bit-plain home_deliver_three_planning_easy_invlimittwo"

# "adventuregame llama3.1-8B-sft-e1-DFINAL home_deliver_three_basic_easy"
# "adventuregame llama3.1-8B-sft-e1-DFINAL home_deliver_three_planning_easy"
# "adventuregame llama3.1-8B-sft-e1-DFINAL home_deliver_three_basic_easy_invlimittwo"
# "adventuregame llama3.1-8B-sft-e1-DFINAL home_deliver_three_planning_easy_invlimittwo"

# "adventuregame llama3.1-70B-sft-e1-DFINAL_1.7K-steps home_deliver_three_basic_easy"
# "adventuregame llama3.1-70B-sft-e1-DFINAL_1.7K-steps home_deliver_three_planning_easy"
# "adventuregame llama3.1-70B-sft-e1-DFINAL_1.7K-steps home_deliver_three_basic_easy_invlimittwo"
# "adventuregame llama3.1-70B-sft-e1-DFINAL_1.7K-steps home_deliver_three_planning_easy_invlimittwo"

# "adventuregame llama3.1-70B-sft-e1-DFINAL_1.1K-steps home_deliver_three_basic_easy"
# "adventuregame llama3.1-70B-sft-e1-DFINAL_1.1K-steps home_deliver_three_planning_easy"
# "adventuregame llama3.1-70B-sft-e1-DFINAL_1.1K-steps home_deliver_three_basic_easy_invlimittwo"
# "adventuregame llama3.1-70B-sft-e1-DFINAL_1.1K-steps home_deliver_three_planning_easy_invlimittwo"

# "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_basic_easy"
# "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_planning_easy"
# "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_basic_easy_invlimittwo"
# "adventuregame llama3.1-sft-e1-_E1_D40005 home_deliver_three_planning_easy_invlimittwo"
    

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