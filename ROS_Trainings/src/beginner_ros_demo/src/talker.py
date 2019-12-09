#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('sheep', String, queue_size=10)
    rospy.init_node('talker')
    rate = rospy.Rate(2)

    while not rospy.is_shutdown():
        outmsg = String()
        outmsg.data = "hello sheep"

        pub.publish(outmsg)
        rate.sleep()


if __name__ == "__main__":
    talker()