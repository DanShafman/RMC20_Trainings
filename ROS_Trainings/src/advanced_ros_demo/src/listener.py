#!/usr/bin/env python

import rospy
from advanced_ros_demo.msg import Testdata

def callback(data):
    rospy.loginfo("this is the listerner Received msg: {0} {1}".format (data.size, data.name))

def listener():
    rospy.init_node("listener", anonymous=True)
    rospy.Subscriber("robot", Testdata, callback)

    rospy.spin()

if __name__ == "__main__":
    listener()