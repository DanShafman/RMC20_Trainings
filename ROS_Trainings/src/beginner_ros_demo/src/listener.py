#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def callback(instring):
    rospy.loginfo("Received message: " + instring.data)

def listener():
    rospy.init_node('listener')
    rospy.Subscriber('sheep', String, callback)

    rospy.spin()

if __name__ == "__main__":
    listener()