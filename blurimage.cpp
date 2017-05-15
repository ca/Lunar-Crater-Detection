#include <cstdio>
#include <iostream>

#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/features2d/features2d.hpp"

using namespace std;
using namespace cv;

int main(int argc, char** argv) {
    // using namespace cv;

    printf("%s\n", argv[1]);
    Mat src=imread(argv[1]);
    
    // int cannyh = atoi(argv[2]);
    // int minvotes = atoi(argv[3]);

    if (!src.data) {
        std::cout << "ERROR:\topening image" <<std::endl;
        return -1;
    }

    // converts the image to hsv so that circle detection is more accurate
    Mat hsv_image;
    cvtColor(src, hsv_image, COLOR_BGR2HSV);
    // high contrast black and white
    Mat imgThreshold;
    inRange(hsv_image,
        Scalar(0, 0, 0),
        Scalar(48, 207, 74),
        imgThreshold);
    // Scalar(28, 50, 100, 0) - Okay for M2
    // Scalar(7, 216, 213, 0)

    // Scalar(118, 186, 137, 0) - MOON 5

    // Scalar(40, 60, 110, 0)
    // Scalar(30, 80, 100, 0) - MOON 2
    // Scalar(210, 250, 220, 0)
    // 50 50 170
    // 100 119 36

    // Applies a gaussian blur to the image
    GaussianBlur( imgThreshold, imgThreshold, Size(9, 9), 2, 2 );
    // fastNlMeansDenoisingColored(imgThreshold, imgThreshold, 10, 10, 7, 21);
    
    vector<Vec3f> circles;
    // applies a hough transform to the image
    HoughCircles(imgThreshold, circles, CV_HOUGH_GRADIENT,
        2, // accumulator resolution (size of image / 2)
        100, //minimum dist between two circles
        400, // Canny high threshold
        10, // minimum number of votes
        10, 65); // min and max radius

    cout << circles.size() << endl;
    cout << "end of test" << endl;

    vector<Vec3f>::
          const_iterator itc = circles.begin();
    int avgRadius = 0;
    int i = 0;
    // Draws the circles on the source image
    while (itc!=circles.end()) {
        i++;
        circle(src, // src_gray2
            Point((*itc)[0], (*itc)[1]), // circle center
            (*itc)[2],       // circle radius
            Scalar(0,0,255), // color
            5);              // thickness
        avgRadius += (*itc)[2];
        ++itc;
    }
    avgRadius = avgRadius/i;
    cout << avgRadius << endl;
    namedWindow("Threshold",CV_WINDOW_AUTOSIZE);
    resize(imgThreshold, imgThreshold, Size(src.cols/2,src.rows/2) ); // resizes it so it fits on our screen
    imshow("Threshold",imgThreshold); // displays the source iamge

    namedWindow("HSV Color Space",CV_WINDOW_AUTOSIZE);
    resize(hsv_image, hsv_image, Size(src.cols/2,src.rows/2) ); // resizes it so it fits on our screen
    imshow("HSV Color Space",hsv_image); // displays the source iamge
    
    namedWindow("Source Image",CV_WINDOW_AUTOSIZE);
    resize(src, src, Size(src.cols/2,src.rows/2) ); // resizes it so it fits on our screen
    imshow("Source Image",src); // displays the source iamge
    
    waitKey(0);
    return 0;
}