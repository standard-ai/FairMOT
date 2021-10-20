#!/usr/bin/env bash

cd src
python train.py mot --exp_id finetune_reid_mot20_dla34 --load_model '../models/fairmot_dla34.pth' --data_cfg '../src/lib/cfg/mot20.json'  --downweight_reid_loss_by_occlusion_percent  --freeze_all_layers_except id
cd ..