% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 657.331655682472615 ; 657.785613901012653 ];

%-- Principal point:
cc = [ 302.800642259329436 ; 242.365209843724642 ];

%-- Skew coefficient:
alpha_c = 0.000411144009279;

%-- Distortion coefficients:
kc = [ -0.253507849309735 ; 0.119567616363800 ; -0.000287691957231 ; 0.000040285985379 ; -0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 0.282506833147356 ; 0.286965429740883 ];

%-- Principal point uncertainty:
cc_error = [ 0.586380083651517 ; 0.552574495957382 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000188983034526;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.002290721462481 ; 0.009337208051511 ; 0.000120775362254 ; 0.000119942885131 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 25;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 1;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.654731e+00 ; 1.652452e+00 ; -6.703138e-01 ];
Tc_1  = [ -1.773230e+02 ; -8.361761e+01 ; 8.532238e+02 ];
omc_error_1 = [ 7.190908e-04 ; 9.084060e-04 ; 1.221849e-03 ];
Tc_error_1  = [ 7.631128e-01 ; 7.236201e-01 ; 4.009817e-01 ];

%-- Image #2:
omc_2 = [ 1.849140e+00 ; 1.901359e+00 ; -3.976473e-01 ];
Tc_2  = [ -1.546878e+02 ; -1.592640e+02 ; 7.577644e+02 ];
omc_error_2 = [ 7.539532e-04 ; 9.369131e-04 ; 1.485944e-03 ];
Tc_error_2  = [ 6.834708e-01 ; 6.404597e-01 ; 3.935010e-01 ];

%-- Image #3:
omc_3 = [ 1.742558e+00 ; 2.078417e+00 ; -5.060510e-01 ];
Tc_3  = [ -1.248808e+02 ; -1.744911e+02 ; 7.756550e+02 ];
omc_error_3 = [ 6.932779e-04 ; 9.849038e-04 ; 1.545153e-03 ];
Tc_error_3  = [ 6.998165e-01 ; 6.556757e-01 ; 3.732910e-01 ];

%-- Image #4:
omc_4 = [ 1.827646e+00 ; 2.117012e+00 ; -1.104309e+00 ];
Tc_4  = [ -6.407163e+01 ; -1.547070e+02 ; 7.791206e+02 ];
omc_error_4 = [ 6.554500e-04 ; 9.754698e-04 ; 1.457481e-03 ];
Tc_error_4  = [ 7.082996e-01 ; 6.560685e-01 ; 2.923177e-01 ];

%-- Image #5:
omc_5 = [ 2.180328e+00 ; 6.129902e-01 ; 6.164516e-01 ];
Tc_5  = [ -1.662660e+02 ; -3.590218e+01 ; 4.797746e+02 ];
omc_error_5 = [ 9.322051e-04 ; 6.204069e-04 ; 1.120037e-03 ];
Tc_error_5  = [ 4.387778e-01 ; 4.127092e-01 ; 3.628755e-01 ];

%-- Image #6:
omc_6 = [ -1.701561e+00 ; -1.929317e+00 ; -7.913588e-01 ];
Tc_6  = [ -1.486839e+02 ; -7.956323e+01 ; 4.446986e+02 ];
omc_error_6 = [ 5.812698e-04 ; 9.074407e-04 ; 1.243191e-03 ];
Tc_error_6  = [ 4.042657e-01 ; 3.862552e-01 ; 3.138864e-01 ];

%-- Image #7:
omc_7 = [ 1.996671e+00 ; 1.931926e+00 ; 1.310717e+00 ];
Tc_7  = [ -8.275291e+01 ; -7.761059e+01 ; 4.399451e+02 ];
omc_error_7 = [ 1.053320e-03 ; 5.925202e-04 ; 1.319838e-03 ];
Tc_error_7  = [ 4.073399e-01 ; 3.788633e-01 ; 3.277179e-01 ];

%-- Image #8:
omc_8 = [ 1.961170e+00 ; 1.824659e+00 ; 1.326644e+00 ];
Tc_8  = [ -1.698467e+02 ; -1.034000e+02 ; 4.617832e+02 ];
omc_error_8 = [ 1.012767e-03 ; 6.134002e-04 ; 1.270454e-03 ];
Tc_error_8  = [ 4.484552e-01 ; 4.122171e-01 ; 3.683272e-01 ];

%-- Image #9:
omc_9 = [ -1.363469e+00 ; -1.980495e+00 ; 3.222270e-01 ];
Tc_9  = [ -1.477981e+00 ; -2.249643e+02 ; 7.285508e+02 ];
omc_error_9 = [ 7.070120e-04 ; 9.048285e-04 ; 1.283051e-03 ];
Tc_error_9  = [ 6.705085e-01 ; 6.139998e-01 ; 3.852136e-01 ];

%-- Image #10:
omc_10 = [ -1.512979e+00 ; -2.086922e+00 ; 1.902171e-01 ];
Tc_10  = [ -2.907234e+01 ; -3.002671e+02 ; 8.602385e+02 ];
omc_error_10 = [ 8.815415e-04 ; 1.070778e-03 ; 1.711041e-03 ];
Tc_error_10  = [ 8.058685e-01 ; 7.291470e-01 ; 5.155389e-01 ];

%-- Image #11:
omc_11 = [ -1.793300e+00 ; -2.065357e+00 ; -4.798477e-01 ];
Tc_11  = [ -1.506667e+02 ; -2.352741e+02 ; 7.045965e+02 ];
omc_error_11 = [ 8.191874e-04 ; 1.012873e-03 ; 1.735271e-03 ];
Tc_error_11  = [ 6.584174e-01 ; 6.265032e-01 ; 5.125194e-01 ];

%-- Image #12:
omc_12 = [ -1.838980e+00 ; -2.087580e+00 ; -5.156159e-01 ];
Tc_12  = [ -1.331636e+02 ; -1.771285e+02 ; 6.047328e+02 ];
omc_error_12 = [ 6.887415e-04 ; 9.556575e-04 ; 1.582398e-03 ];
Tc_error_12  = [ 5.604758e-01 ; 5.299244e-01 ; 4.270726e-01 ];

%-- Image #13:
omc_13 = [ -1.918796e+00 ; -2.116790e+00 ; -5.944091e-01 ];
Tc_13  = [ -1.324044e+02 ; -1.434723e+02 ; 5.445405e+02 ];
omc_error_13 = [ 6.394918e-04 ; 9.365868e-04 ; 1.545911e-03 ];
Tc_error_13  = [ 5.037435e-01 ; 4.746698e-01 ; 3.873989e-01 ];

%-- Image #14:
omc_14 = [ -1.954147e+00 ; -2.124793e+00 ; -5.848276e-01 ];
Tc_14  = [ -1.233361e+02 ; -1.370536e+02 ; 4.905927e+02 ];
omc_error_14 = [ 6.003049e-04 ; 9.136545e-04 ; 1.507285e-03 ];
Tc_error_14  = [ 4.548011e-01 ; 4.272632e-01 ; 3.472837e-01 ];

%-- Image #15:
omc_15 = [ -2.110562e+00 ; -2.254100e+00 ; -4.957071e-01 ];
Tc_15  = [ -1.988792e+02 ; -1.344250e+02 ; 4.747370e+02 ];
omc_error_15 = [ 7.003066e-04 ; 8.726073e-04 ; 1.659710e-03 ];
Tc_error_15  = [ 4.476490e-01 ; 4.228845e-01 ; 3.721471e-01 ];

%-- Image #16:
omc_16 = [ 1.887157e+00 ; 2.336907e+00 ; -1.740773e-01 ];
Tc_16  = [ -1.562810e+01 ; -1.702051e+02 ; 6.955625e+02 ];
omc_error_16 = [ 9.650094e-04 ; 1.054542e-03 ; 2.099166e-03 ];
Tc_error_16  = [ 6.278445e-01 ; 5.832873e-01 ; 4.281708e-01 ];

%-- Image #17:
omc_17 = [ -1.612806e+00 ; -1.953575e+00 ; -3.471140e-01 ];
Tc_17  = [ -1.349839e+02 ; -1.388704e+02 ; 4.900254e+02 ];
omc_error_17 = [ 5.844283e-04 ; 8.684704e-04 ; 1.248908e-03 ];
Tc_error_17  = [ 4.460195e-01 ; 4.222706e-01 ; 3.082604e-01 ];

%-- Image #18:
omc_18 = [ -1.341789e+00 ; -1.692603e+00 ; -2.965796e-01 ];
Tc_18  = [ -1.851837e+02 ; -1.577282e+02 ; 4.411726e+02 ];
omc_error_18 = [ 6.625091e-04 ; 8.221470e-04 ; 9.985782e-04 ];
Tc_error_18  = [ 4.041155e-01 ; 3.842947e-01 ; 3.012587e-01 ];

%-- Image #19:
omc_19 = [ -1.925663e+00 ; -1.838146e+00 ; -1.440131e+00 ];
Tc_19  = [ -1.063890e+02 ; -7.947338e+01 ; 3.339377e+02 ];
omc_error_19 = [ 5.750631e-04 ; 9.891137e-04 ; 1.253106e-03 ];
Tc_error_19  = [ 3.181297e-01 ; 2.961381e-01 ; 2.710146e-01 ];

%-- Image #20:
omc_20 = [ 1.896074e+00 ; 1.593757e+00 ; 1.471765e+00 ];
Tc_20  = [ -1.436700e+02 ; -8.785602e+01 ; 3.961995e+02 ];
omc_error_20 = [ 1.022648e-03 ; 6.387682e-04 ; 1.145549e-03 ];
Tc_error_20  = [ 3.873846e-01 ; 3.530561e-01 ; 3.235678e-01 ];

%-- Image #21:
omc_21 = [ 1.930381e+00 ; 1.668043e+00 ; 1.441859e+00 ];
Tc_21  = [ -8.313036e+01 ; -8.472120e+01 ; 4.059933e+02 ];
omc_error_21 = [ 1.043154e-03 ; 6.479971e-04 ; 1.186684e-03 ];
Tc_error_21  = [ 3.815768e-01 ; 3.517553e-01 ; 3.136438e-01 ];

%-- Image #22:
omc_22 = [ 2.106389e+00 ; 1.698524e+00 ; 7.002912e-01 ];
Tc_22  = [ -2.008480e+02 ; -1.444180e+02 ; 5.424789e+02 ];
omc_error_22 = [ 8.973944e-04 ; 7.118533e-04 ; 1.429678e-03 ];
Tc_error_22  = [ 5.234266e-01 ; 4.728700e-01 ; 4.150237e-01 ];

%-- Image #23:
omc_23 = [ -1.363796e+00 ; -1.714573e+00 ; -1.439704e-01 ];
Tc_23  = [ -1.628658e+02 ; -1.918900e+02 ; 5.846429e+02 ];
omc_error_23 = [ 6.886315e-04 ; 8.242482e-04 ; 1.059713e-03 ];
Tc_error_23  = [ 5.363048e-01 ; 5.010905e-01 ; 3.596627e-01 ];

%-- Image #24:
omc_24 = [ -1.336964e+00 ; -1.780799e+00 ; 4.189434e-02 ];
Tc_24  = [ -1.004475e+02 ; -1.952731e+02 ; 5.879591e+02 ];
omc_error_24 = [ 6.641638e-04 ; 8.354302e-04 ; 1.082493e-03 ];
Tc_error_24  = [ 5.384581e-01 ; 4.976559e-01 ; 3.259879e-01 ];

%-- Image #25:
omc_25 = [ 2.717532e+00 ; 8.779000e-01 ; -1.019685e+00 ];
Tc_25  = [ -2.164506e+02 ; 8.419593e+00 ; 8.524984e+02 ];
omc_error_25 = [ 9.917916e-04 ; 7.340518e-04 ; 1.565745e-03 ];
Tc_error_25  = [ 7.731491e-01 ; 7.186794e-01 ; 3.991235e-01 ];
