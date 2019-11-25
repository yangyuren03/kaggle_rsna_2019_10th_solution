# train
python -m src.preprocess.dicom_to_dataframe --input ./input/stage_2_train.csv --output ./intermediate_output/preprocessed_data/train_raw_senet154_customlabels.pkl --imgdir ./input/stage_2_train_images
python -m src.preprocess.create_dataset --input ./intermediate_output/preprocessed_data/train_raw_senet154_customlabels.pkl --output ./intermediate_output/preprocessed_data/train_senet154_customlabels.pkl
python -m src.preprocess.make_folds --input ./intermediate_output/preprocessed_data/train_senet154_customlabels.pkl --output ./intermediate_output/preprocessed_data/train_folds_senet154_customlabels.pkl --n-fold 5 --seed 10

# test
python -m src.preprocess.dicom_to_dataframe --input ./input/stage_2_sample_submission.csv --output ./intermediate_output/preprocessed_data/test_raw_senet154_customlabels.pkl --imgdir ./input/stage_2_test_images
python -m src.preprocess.create_dataset --input ./intermediate_output/preprocessed_data/test_raw_senet154_customlabels.pkl --output ./intermediate_output/preprocessed_data/test_senet154_customlabels.pkl
