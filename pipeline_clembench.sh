#!/bin/bash
# Usage: ./pipeline_clembench.sh
# Preparation: ./setup.sh

export CUDA_VISIBLE_DEVICES=1
echo "CUDA devices=1"

echo
echo "==================================================="
echo "PIPELINE: Starting"
echo "==================================================="
echo
game_runs=(
# v2: codenames, adventuregame, guesswhat, matchit_ascii, text_map_basic, textmapworld_graphreasoning, textmapworld_specificroom

# "codenames llama3.1-70B-sft-e1-DFINAL"

# "codenames qwen-coder-32B-sft-e1-DFINAL"
# "adventuregame qwen-coder-32B-sft-e1-DFINAL"
# "guesswhat qwen-coder-32B-sft-e1-DFINAL"
# "matchit_ascii qwen-coder-32B-sft-e1-DFINAL"
# "textmapworld qwen-coder-32B-sft-e1-DFINAL"
# "textmapworld_graphreasoning qwen-coder-32B-sft-e1-DFINAL"
# "textmapworld_specificroom qwen-coder-32B-sft-e1-DFINAL"
# "referencegame qwen-coder-32B-sft-e1-DFINAL"
# "imagegame qwen-coder-32B-sft-e1-DFINAL"
# "privateshared qwen-coder-32B-sft-e1-DFINAL"
# # "wordle_withclue qwen-coder-32B-sft-e1-DFINAL"
# "taboo qwen-coder-32B-sft-e1-DFINAL"
# # "wordle_withcritic qwen-coder-32B-sft-e1-DFINAL"

# done "codenames Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# "adventuregame Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# done "guesswhat Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
#  done "matchit_ascii Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# "textmapworld Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# "textmapworld_graphreasoning Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# "textmapworld_specificroom Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# done "referencegame Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# "imagegame Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# "privateshared Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# # "wordle_withclue Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# done "taboo Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# # "wordle_withcritic Unsloth-Qwen2.5-Coder-32B-bnb-4bit"
# # "wordle Unsloth-Qwen2.5-Coder-32B-bnb-4bit"

# "codenames llama3.1-70B-sft-e1-DFINAL"
# "adventuregame llama3.1-70B-sft-e1-DFINAL"
# "guesswhat llama3.1-70B-sft-e1-DFINAL"
# "matchit_ascii llama3.1-70B-sft-e1-DFINAL"
# "textmapworld llama3.1-70B-sft-e1-DFINAL"
# "textmapworld_graphreasoning llama3.1-70B-sft-e1-DFINAL"
# "textmapworld_specificroom llama3.1-70B-sft-e1-DFINAL"
# "referencegame llama3.1-70B-sft-e1-DFINAL"
# "imagegame llama3.1-70B-sft-e1-DFINAL"
# "privateshared llama3.1-70B-sft-e1-DFINAL"
# # "wordle_withclue llama3.1-70B-sft-e1-DFINAL"
# "taboo llama3.1-70B-sft-e1-DFINAL"
# # "wordle_withcritic llama3.1-70B-sft-e1-DFINAL"

# # "codenames Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "adventuregame Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "guesswhat Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "matchit_ascii Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "textmapworld Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "textmapworld_graphreasoning Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "textmapworld_specificroom Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "referencegame Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "imagegame Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "privateshared Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "wordle_withclue Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "taboo Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "wordle_withcritic Unsloth-meta-llama-3.1-70B-bnb-4bit"
# # "wordle Unsloth-meta-llama-3.1-70B-bnb-4bit"

# # "wordle llama3.1-sft-e1-DFINAL"
# # "referencegame llama3.1-sft-e1-DFINAL"
# # "imagegame llama3.1-sft-e1-DFINAL"
# # "privateshared llama3.1-sft-e1-DFINAL"
# # "wordle_withclue llama3.1-sft-e1-DFINAL"
# # "taboo llama3.1-sft-e1-DFINAL"
# # "wordle_withcritic llama3.1-sft-e1-DFINAL"

# # "privateshared llama3.1-sft-e1-_E1_D90053"

# # "wordle llama3.1-sft-e1-_E1_D90053"

# # "wordle_withclue llama3.1-sft-e1-_E1_D90053"

# # "taboo llama3.1-sft-e1-_E1_D90053"

# # "referencegame llama3.1-sft-e1-_E1_D90053"

# # "imagegame llama3.1-sft-e1-_E1_D90053"

# # "wordle_withcritic llama3.1-sft-e1-_E1_D90053"

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