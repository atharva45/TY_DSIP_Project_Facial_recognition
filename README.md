# TY_DSIP_Project_Facial_recognition

Methodology
1) Load the image: The first step is to load the image of the face and display it.

2) Define facial feature coordinates: The coordinates of the eyes, nose, and mouth are defined manually based on the position of the features in the image.

3) Calculate feature distances: The distances between the facial features are calculated using the 'norm' function, which calculates the Euclidean distance between two points.

4) Calculate ratios: The ratios between the distances are calculated to normalize the feature distances across different face sizes.

5)  Determine facial expression: Based on the calculated ratios, the facial expression is determined using a set of conditional statements. The four possible facial expressions are 'Happy', 'Surprised', 'Neutral', and 'Sad'.

6) Display result: Finally, the determined facial expression is displayed on the image using the 'text' function, which overlays text on the image.

