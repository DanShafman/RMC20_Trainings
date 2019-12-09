import cv2
import numpy

cam = cv2.VideoCapture(0)

while (True):
    # read in camera stream
    _, frame = cam.read()

    # convert current image from camera from BGR format to HSV
    hsv_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

    # set lower and upper limits for HSV values
    lower = [0, 80, 80]
    upper = [20, 255, 255]

    lower = numpy.array(lower, dtype = "uint8")
    upper = numpy.array(upper, dtype = "uint8")

    # generates an array where if a pixel is outside of the range we set,
    # it is set to 0; else, it is set to 1
    threshold_mask = cv2.inRange(frame, lower, upper)
    
    # # # apply a median filter to the thresholded image
    # # median = cv.medianBlur(threshold_mask, 5)

    # AND compare the pixels in the threshold_mask and original frame;
    # if a pixel in the threshold_mask is 0, the corresponding pixel
    # in the frame is set to 0. else, it is left untouched
    output = cv2.bitwise_and(frame, frame, mask=threshold_mask)

    # find ALL the contours in the binary image
    _,contours, _ = cv2.findContours(threshold_mask, 1, 2)

    # isolate the contour with the LARGEST PERIMETER
    if (len(contours) > 0):
        maxContour = max(contours, key=cv2.contourArea)
        # draw a rectangle around the largest contour
        x,y,w,h = cv2.boundingRect(maxContour)
        cv2.rectangle(output,(x,y),(x+w,y+h),(0,255,0),2)


    cv2.imshow('frame', output)

    if (cv2.waitKey(1) & 0xFF == ord('q')):
        break

cam.release()
cv2.destroyAllWindows()