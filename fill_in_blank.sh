#!/bin/bash
CHECKPOINT_DIR="model/model_final/model.ckpt-34865"

python polyvore/fill_in_blank.py \
  --checkpoint_path=${CHECKPOINT_DIR} \
  --json_file="data/label/fill_in_blank_test.json" \
  --feature_file="data/features/test_features.pkl" \
  --rnn_type="lstm" \
  --direction="2" \
  --result_file="fill_in_blank_result.pkl"
