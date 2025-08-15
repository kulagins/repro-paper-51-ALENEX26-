#!/bin/bash
set -e  # Exit on error
set -x  # Show each command before running it

# Save starting directory
START_DIR=$(pwd)
echo "Starting directory: $START_DIR"

# Step 1: Navigate up one level and into disk-dynamic-scheduler
echo "Changing directory to ../disk-dynamic-scheduler"
cd ..
cd disk-dynamic-scheduler
echo "Current directory: $(pwd)"

# Step 2: Activate the conda environment py3k
echo "Activating conda environment: py3k"
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate py3k

echo "Current conda env: $CONDA_DEFAULT_ENV"
which python
which simex

# Step 3: Run the simulation
echo "Running: simex e launch --launch-through=fork"
simex e purge --all -f
simex e launch --launch-through=fork 2>&1 | tee simex.log

# Step 4: Run clean-files.sh with parameter ./output
echo "Cleaning files in ./output"
cd output
../scripts/clean-files.sh ./

cd merged
../../scripts/clean-lines.sh ./

echo "Calling jupyter - todo"

# Optional: Return to starting directory
cd "$START_DIR"
echo "Returned to $START_DIR"
