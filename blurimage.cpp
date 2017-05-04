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
    
    int cannyh = atoi(argv[2]);
    int minvotes = atoi(argv[3]);

    if (!src.data) {
        std::cout << "ERROR:\topening image" <<std::endl;
        return -1;
    }
    namedWindow("image",CV_WINDOW_AUTOSIZE);
    imshow("image",src);

    Mat hsv_image;
    cvtColor(src, hsv_image, COLOR_BGR2HSV);
    Mat imgThreshold;
    inRange(hsv_image, Scalar(0, 0, 0, 0), Scalar(180, 255, 100, 0), imgThreshold);

    GaussianBlur( imgThreshold, imgThreshold, Size(9, 9), 2, 2 );
    vector<Vec3f> circles;
    HoughCircles(imgThreshold, circles, CV_HOUGH_GRADIENT, 2, imgThreshold.rows/8, 100, 20, 0, 0);

    
    // Mat src_gray2;
    // cvtColor(src, src_gray2, CV_BGR2GRAY );

    // GaussianBlur( src_gray2, src_gray2, Size(9, 9), 2, 2 );

    // vector<Vec3f> circles;

    // HoughCircles(src_gray2, circles, CV_HOUGH_GRADIENT,
    //       2,   // accumulator resolution (size of the image / 2)
    //       5,  // minimum distance between two circles
    //       cannyh, // Canny high threshold
    //       minvotes, // minimum number of votes
    //       0, 60); // min and max radius

    cout << circles.size() << endl;
    cout << "end of test" << endl;

       vector<Vec3f>::
              const_iterator itc= circles.begin();

       while (itc!=circles.end()) {

         circle(imgThreshold, // src_gray2
            Point((*itc)[0], (*itc)[1]), // circle centre
            (*itc)[2],       // circle radius
            Scalar(255), // color
            2);              // thickness

         ++itc;
       }
        namedWindow("image",CV_WINDOW_AUTOSIZE);
        imshow("image",imgThreshold); // src_gray2
        waitKey(0);
    return 0;
}