python apply_net.py --dataset-dir ~/datasets/VOS/COCO_DATASET_ROOT --test-dataset coco_extended_ood_val --config-file VOC-Detection/faster-rcnn/UnSniffer-eval.yaml --inference-config Inference/standard_nms.yaml --random-seed 0 --image-corruption-level 0 --visualize 0

cd evaluator/

python eval.py --dataset-dir ~/datasets/VOS/COCO_DATASET_ROOT --test-dataset coco_extended_ood_val --outputdir ../output/  --config-file VOC-Detection/faster-rcnn/UnSniffer-eval.yaml --inference-config Inference/standard_nms.yaml --random-seed 0 --image-corruption-level 0

cd ..
