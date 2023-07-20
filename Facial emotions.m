% Read and display the input image of a face
img = imread('snap.jpg');
imshow(img);

% Define the coordinates of the facial features
left_eye = [150, 200]; % coordinates of the left eye
right_eye = [250, 200]; % coordinates of the right eye
nose_tip = [200, 250]; % coordinates of the nose tip
left_mouth = [150, 300]; % coordinates of the left corner of the mouth
right_mouth = [250, 300]; % coordinates of the right corner of the mouth

% Calculate the distances between the facial features
eye_distance = norm(left_eye - right_eye); % distance between the eyes
mouth_distance = norm(left_mouth - right_mouth); % distance between the corners of the mouth
nose_eye_distance = norm(nose_tip - (left_eye + right_eye)/2); % distance between the nose tip and the midpoint of the eyes
nose_mouth_distance = norm(nose_tip - (left_mouth + right_mouth)/2); % distance between the nose tip and the midpoint of the mouth

% Calculate the ratios between the distances
eye_ratio = eye_distance / nose_eye_distance; % ratio of eye distance to nose-eye distance
mouth_ratio = mouth_distance / nose_mouth_distance; % ratio of mouth distance to nose-mouth distance

% Determine the facial expression based on the ratios
if mouth_ratio > 0.5 && eye_ratio > 0.4
    expression = 'Happy'; % if mouth is large and eyes are open, the expression is happy
elseif mouth_ratio > 0.5 && eye_ratio <= 0.4
    expression = 'Surprised'; % if mouth is large and eyes are closed or half-closed, the expression is surprised
elseif mouth_ratio <= 0.5 && eye_ratio > 0.4
    expression = 'Neutral'; % if mouth is small and eyes are open, the expression is neutral
else
    expression = 'Sad'; % if mouth is small and eyes are closed or half-closed, the expression is sad
end

% Display the facial expression on the image
text(40, 40, ['The facial expression is: ' expression], 'FontSize', 16, 'Color', 'yellow');
