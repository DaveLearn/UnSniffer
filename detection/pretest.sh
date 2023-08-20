python apply_net.py --dataset-dir ~/datasets/VOS/VOC_DATASET_ROOT --test-dataset voc_completely_annotation_pretest --config-file VOC-Detection/faster-rcnn/UnSniffer-eval.yaml --inference-config Inference/standard_nms.yaml --random-seed 0 --image-corruption-level 0 --visualize 0  --pretest True

echo apply_net done

cd evaluator/

echo doing grid traverse

python grid_traverse.py --dataset-dir ~/datasets/VOS/VOC_DATASET_ROOT --test-dataset voc_completely_annotation_pretest --outputdir ../output/  --config-file VOC-Detection/faster-rcnn/UnSniffer.yaml --inference-config Inference/standard_nms.yaml --random-seed 0 --image-corruption-level 0

echo doing energy traverse

python energy_thresh.py  --dataset-dir ~/datasets/VOS/VOC_DATASET_ROOT --config-file VOC-Detection/faster-rcnn/UnSniffer-eval.yaml --inference-config Inference/standard_nms.yaml --image-corruption-level 0

cd ..